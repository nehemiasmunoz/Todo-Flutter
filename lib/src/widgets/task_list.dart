import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/src/provider/task_provider.dart';
import 'package:todo/src/widgets/widgets.dart';

class TasksList extends StatelessWidget {
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder:
          (BuildContext context, TaskProvider taskProvider, Widget? child) {
        return ListView.builder(
          itemCount: taskProvider.taskCount,
          itemBuilder: (context, i) {
            final task = taskProvider.tasks[i];
            return GestureDetector(
              onLongPress: () => taskProvider.deleteTask(task),
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TaskTile(
                  taskTitle: task.name,
                  isChecked: task.isDone,
                  checkboxCallback: (value) => taskProvider.updateTask(task),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
