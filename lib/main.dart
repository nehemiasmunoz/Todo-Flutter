import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/src/provider/task_provider.dart';
import 'package:todo/src/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskProvider>(
      create: (context) => TaskProvider(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
