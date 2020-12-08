import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'RoundedTextField.dart';

class WritePost extends StatefulWidget {
  @override
  _WritePostState createState() => _WritePostState();
}

class _WritePostState extends State<WritePost> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage:
                NetworkImage('https://www.woolha.com/media/2020/03/eevee.png'),
            backgroundColor: Colors.red,
          ),
          SizedBox(
            width: 10,
          ),
          new FlatButton(
            child: new Text("Whats come in your mind?"),
            padding: EdgeInsets.all(12),
            onPressed: null,
          )
        ],
      ),
    );
  }
}
