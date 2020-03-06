import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_todo_provider/models/task_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'add_task_screen.dart';

class TaskScreen extends StatelessWidget {
  void addBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) => SingleChildScrollView(
        child: Container(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: AddTaskScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 50.0, right: 35.0),
            width: MediaQuery.of(context).size.width,
            height: 200.0,
            color: Colors.lightBlueAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  'My Todo App',
                  style: GoogleFonts.pacifico(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 45.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      '14 Tasks',
                      style: GoogleFonts.roboto(
                        textStyle:
                            TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 25.0,
                      child: Icon(
                        Icons.list,
                        color: Colors.lightBlueAccent,
                        size: 35.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: ClipPath(
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Consumer<TaskManager>(builder: (context, tasks, child) {
                  return ListView(
                    children: <Widget>[
                      ListTile(
                        title: Text('Buy smthing'),
                        trailing:
                            Checkbox(value: false, onChanged: (bool b) {}),
                      )
                    ],
                  );
                }),
              ),
              clipper: WaveClipperTwo(reverse: true),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          addBottomSheet(context);
        },
      ),
    );
  }
}
