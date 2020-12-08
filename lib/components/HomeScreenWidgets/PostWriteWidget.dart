import 'package:flutter/material.dart';

import 'WritePostWidget.dart';

class PostWriteWidget extends StatefulWidget {
  @override
  _PostWriteWidgetState createState() => _PostWriteWidgetState();
}

class _PostWriteWidgetState extends State<PostWriteWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        WritePost(),
        Container(
            height: 1, decoration: BoxDecoration(color: Colors.grey[350])),
        new Container(
          alignment: FractionalOffset.center,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new FlatButton(
                // child: new Text('Live', style: new TextStyle(color: Color(0xFF2E3233))),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.video_call_sharp,
                      color: Colors.redAccent,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Live")
                  ],
                ),
              ),
              new FlatButton(
                // child: new Text('Live', style: new TextStyle(color: Color(0xFF2E3233))),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.image,
                      color: Colors.lightGreen,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Photo")
                  ],
                ),
              ),
              new FlatButton(
                // child: new Text('Live', style: new TextStyle(color: Color(0xFF2E3233))),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.video_call_sharp,
                      color: Colors.deepPurpleAccent,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Room")
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
            height: 8, decoration: BoxDecoration(color: Colors.grey[350])),
      ],
    );
  }
}
