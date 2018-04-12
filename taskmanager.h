#ifndef TASKMANAGER_H
#define TASKMANAGER_H
#include <mutex>
#include <map>
#include <atomic>

#include "agvtask.h"
#include "threadpool.h"

class TaskManager
{
public:
    static TaskManager* getInstance(){
        return p;
    }
    bool init();

    //添加任务
    bool addTask(AgvTask *task);

    //查询未执行的任务
    AgvTask *queryUndoTask(int taskId);

    //查询正在执行的任务
    AgvTask *queryDoingTask(int taskId);

    //查询完成执行的任务
    AgvTask *queryDoneTask(int taskId);

    //返回task的状态。
    int queryTaskStatus(int taskId);

    //取消一个任务
    int cancelTask(int taskId);

    //完成了一个任务
    void finishTask(AgvTask *task);

    //执行一个任务
    void excuteTask(AgvTask *task);
protected:
    TaskManager();
private:
    static TaskManager* p;
    //未分配的任务[优先级/任务列表]
    std::map<int, std::vector<AgvTask *> ,std::greater<int> > toDistributeTasks;
    std::mutex toDisMtx;

    //已分配的任务
    std::vector<AgvTask *> doingTask;
    std::mutex doingTaskMtx;

    ThreadPool pool;

    bool saveTask(AgvTask *task);

    std::atomic_int node_id;
    std::atomic_int thing_id;
    std::atomic_int task_id;
};

#endif // TASKMANAGER_H
