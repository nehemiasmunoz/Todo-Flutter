import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/src/provider/task_provider.dart';
import 'package:todo/src/screens/screens.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      child: Icon(
                        Icons.menu,
                        size: 30,
                        color: Colors.purple,
                      ),
                    ),
                    const Text(
                      "Todo's",
                      style: TextStyle(fontSize: 28),
                    ),
                    Text(
                      "${Provider.of<TaskProvider>(context).tasks.length} Tasks",
                      style: const TextStyle(fontSize: 20),
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
                  child: TasksList(),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (BuildContext ctx) => AddTaskScreen(),
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
