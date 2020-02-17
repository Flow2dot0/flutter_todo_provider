import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          TextField(),
          SizedBox(
            height: 20.0,
          ),
          RaisedButton(
            color: Colors.lightBlueAccent,
            onPressed: () {},
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
