import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todo_provider/models/task.dart';
import 'package:flutter_todo_provider/models/task_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String title;

    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        children: <Widget>[
          Text(
            'Add Task',
            style: GoogleFonts.roboto(
              textStyle:
                  TextStyle(color: Colors.lightBlueAccent, fontSize: 25.0),
            ),
          ),
          TextField(
            onChanged: (String newTitle) {
              title = newTitle;
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          RaisedButton(
            color: Colors.lightBlueAccent,
            onPressed: () {
              Provider.of<TaskManager>(context, listen: false).addTask(title);
              Navigator.pop(context);
            },
            child: Text(
              'OK',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(color: Colors.white, fontSize: 25.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
