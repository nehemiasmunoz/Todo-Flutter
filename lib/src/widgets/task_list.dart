import 'package:flutter/material.dart';
import 'package:todo/src/widgets/widgets.dart';

import '../models/task.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    super.key,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: "make purchase"),
    Task(name: "close door"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, i) => Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TaskTile(
          taskTitle: tasks[i].name,
          isChecked: tasks[i].isDone,
          checkboxCallback: (checkboxState) => setState(
            () {
              tasks[i].toggleDone();
            },
          ),
        ),
      ),
    );
  }
}
