import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/src/provider/task_provider.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String textFieldValue = '';

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
            top: 30,
            left: 20,
            right: 30,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Text(
              "Add task",
              style: TextStyle(fontSize: 25),
            ),
            TextField(
              autocorrect: true,
              textAlign: TextAlign.center,
              onChanged: (newValue) => textFieldValue = newValue,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<TaskProvider>(context, listen: false)
                    .addNewTask(textFieldValue);
                Navigator.pop(context);
              },
              child: const Text("Add"),
            )
          ],
        ),
      ),
    );
  }
}
