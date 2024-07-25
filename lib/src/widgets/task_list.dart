import 'package:flutter/material.dart';
import 'package:todo/src/widgets/widgets.dart';

import '../models/task.dart';

class TasksList extends StatefulWidget {
  const TasksList({super.key, required this.taskList});
  final List<Task> taskList;
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.taskList.length,
      itemBuilder: (context, i) => Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TaskTile(
          taskTitle: widget.taskList[i].name,
          isChecked: widget.taskList[i].isDone,
          checkboxCallback: (checkboxState) => setState(
            () {
              widget.taskList[i].toggleDone();
            },
          ),
        ),
      ),
    );
  }
}
