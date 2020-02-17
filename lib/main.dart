import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: TaskScreen(),
    ));

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
    );
  }
}
