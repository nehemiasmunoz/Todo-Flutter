import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Hi",
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      tileColor: Colors.white,
      trailing: TaskCheckbox(
        isChecked: isChecked,
        onChange: (value) => setState(() {
          isChecked = value;
        }),
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool isChecked;
  final Function onChange;
  const TaskCheckbox(
      {super.key, required this.isChecked, required this.onChange});

  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: (bool? value) => onChange(value),
    );
  }
}
