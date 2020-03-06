import 'package:flutter/material.dart';
import 'package:flutter_todo_provider/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

import 'models/task_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskManager>(
      create: (context) => TaskManager(),
      child: MaterialApp(
        home: TaskScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
