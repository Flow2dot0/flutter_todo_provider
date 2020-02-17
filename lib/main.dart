import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(
      MaterialApp(
        home: TaskScreen(),
      ),
    );

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 40.0, right: 35.0),
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
                  height: 30.0,
                ),
                Text(
                  '14 tasks',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ClipPath(
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Text('Test'),
              ),
              clipper: WaveClipperTwo(reverse: true),
            ),
          ),
        ],
      ),
    );
  }
}
