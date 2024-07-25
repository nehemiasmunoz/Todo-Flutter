import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
            top: 30,
            left: 20,
            right: 30,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              "Add task",
              style: TextStyle(fontSize: 25),
            ),
            TextField(
              autocorrect: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: null,
              child: Text("Add"),
            )
          ],
        ),
      ),
    );
  }
}
