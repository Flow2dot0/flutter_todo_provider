import 'package:flutter/material.dart';
import 'package:flutter_todo_provider/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:flutter_todo_provider/models/task_manager.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskManager>(
      builder: (context, taskManager, child) {
        return ListView.builder(
            itemCount: taskManager.tasksCount,
            itemBuilder: (context, i) {
              return TaskTile(
                isDone: taskManager.tasks[i].isDone,
                title: taskManager.tasks[i].title,
                checkboxCallBack: (checkBoxState) {
                  taskManager.updateTask(taskManager.tasks[i]);
                },
                longPressCallback: () =>
                    taskManager.deleteTask(taskManager.tasks[i]),
              );
            });
      },
    );
  }
}
