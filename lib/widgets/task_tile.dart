import 'package:flutter/material.dart';
import 'package:flutter_todo_provider/models/task_manager.dart';
import 'package:provider/provider.dart';

class TaskTile extends StatelessWidget {
  final bool isDone;
  final String title;
  final Function checkboxCallBack;
  final Function longPressCallback;

  const TaskTile(
      {Key key,
      @required this.isDone,
      @required this.title,
      this.checkboxCallBack,
      this.longPressCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
            decoration:
                isDone ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        value: isDone,
        onChanged: checkboxCallBack,
      ),
      onLongPress: longPressCallback,
    );
  }
}
