import 'package:flutter/material.dart';
import 'package:flutter_application_2/homescreen.dart';

void main() {
  runApp(const TasksApp());
}

class TasksApp extends StatefulWidget {
  const TasksApp({super.key});

  @override
  State<TasksApp> createState() => _TasksAppState();
}

class _TasksAppState extends State<TasksApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeScreen());
  } 
}
