import 'package:flutter/material.dart';
import 'package:todo/src/screens/screens.dart';

import '../models/task.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Task> tasks = [
    Task(name: "make purchase"),
    Task(name: "close door"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: const EdgeInsets.all(16.0),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.menu,
                        size: 30,
                        color: Colors.purple,
                      ),
                    ),
                    Text(
                      "Todo's",
                      style: TextStyle(fontSize: 28),
                    ),
                    Text(
                      "10 Tasks",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.deepPurple[200],
                  ),
                  child: TasksList(
                    taskList: tasks,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (BuildContext ctx) => AddTaskScreen(
            addTaskCallback: (newTaskTitle) {
              setState(() {
                tasks.add(Task(name: newTaskTitle));
              });
              Navigator.pop(context);
            },
          ),
        ),
        child: const Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
