// Copyright 2021 DeepMind Technologies Limited
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#include "third_party/mujoco_mpc/mjpc/interface.h"

#include <fstream>
#include <memory>
#include <string>
#include <vector>
#include <mujoco/mujoco.h>
#include "mjpc/agent.h"
#include "mjpc/task.h"
#include "mjpc/tasks/tasks.h"
#include "mjpc/threadpool.h"
#include "mjpc/utilities.h"


namespace mjpc {
AgentRunner::AgentRunner(const mjModel* model, std::shared_ptr<Task> task)
    : agent_plan_pool_(1) {
  std::vector<std::shared_ptr<Task>> task_v = {task};
  agent_.SetTaskList(std::move(task_v));
  agent_.Initialize(model);
  agent_.Allocate();
  agent_.Reset();
  agent_.plan_enabled = true;
  agent_.action_enabled = true;
  agent_.visualize_enabled = false;
  agent_.plot_enabled = false;
  exit_request_.store(false);
  agent_plan_pool_.Schedule(
      [this]() { agent_.Plan(exit_request_, ui_load_request_); });
}

AgentRunner::~AgentRunner() {
  exit_request_.store(true);  // ask the planner threadpool to stop
  agent_plan_pool_.WaitCount(1);  // make sure it's stopped
}

void AgentRunner::Step(mjData* data) {
  // Open file in append mode
  std::ofstream outFile;
  outFile.open("data.txt", std::ios_base::app);

  // Check if file is opened successfully
  if (outFile.is_open()) {
    // Write data value to file
    outFile << data << std::endl;
    // Close the file
    outFile.close();
  } else {
    std::cerr << "Unable to open file!" << std::endl;
  }

  agent_.SetState(data);
  agent_.ActivePlanner().ActionFromPolicy(
    data->ctrl, &agent_.ActiveState().state()[0], agent_.ActiveState().time());
  //  mj_printData(data, "MJD.TXT");
}

void AgentRunner::Residual(const mjModel* model, mjData* data) {
  agent_.ActiveTask()->Residual(model, data, data->sensordata);
}
}  // namespace mjpc

namespace {
mjpc::AgentRunner* runner = nullptr;

// not exposed to Unity, "extern C" is for MuJoco's callback assignment:
extern "C" void residual_sensor_callback(const mjModel* model, mjData* data,
                                          int stage) {
  if (stage == mjSTAGE_ACC) {
    runner->Residual(model, data);
  }
}
}  // namespace


extern "C" void destroy_policy() {
  if (runner != nullptr) {
    delete runner;
    runner = nullptr;
  }
}

extern "C" void create_policy_from_task_id(const mjModel* model, int task_id) {
  auto tasks = mjpc::GetTasks();
  create_policy(model, std::move(tasks[task_id]));
}

extern "C" void create_policy(const mjModel* model,
                              std::shared_ptr<mjpc::Task> task) {
  if (!mjcb_sensor) {
    mjcb_sensor = residual_sensor_callback;
  }
  destroy_policy();
  runner = new mjpc::AgentRunner(model, task);
}

extern "C" void step_policy(mjData* data) {
  if (runner != nullptr) {
    runner->Step(data);

    // Open a file in write mode
    std::ofstream outfile;
    outfile.open("data.txt", std::ios_base::app);
    
    // Check if the file was opened successfully
    if (!outfile) {
      std::cerr << "Error: Cannot open file!" << std::endl;
      return;
    }
    
    // Write the data value to the file
    outfile << "Data value: " << data << std::endl;
    
    // Close the file
    outfile.close();
//    mj_printData(data, "MJD.TXT");
  }
}
