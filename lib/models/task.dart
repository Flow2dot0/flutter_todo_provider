import 'package:flutter/cupertino.dart';

class Task {
  bool isDone = false;
  String title;

  Task({@required this.title});

  void toggle() {
    isDone = !isDone;
  }
}
