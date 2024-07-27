import 'dart:collection';

import 'package:flutter/foundation.dart';

import '../models/task.dart';

class TaskProvider extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: "make purchase"),
    Task(name: "close door"),
  ];

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);

  int get taskCount {
    return _tasks.length;
  }

  void addNewTask(String title) {
    _tasks.add(Task(name: title));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
