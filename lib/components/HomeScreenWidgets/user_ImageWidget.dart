import 'package:flutter/material.dart';

class User_ImageWidget extends StatefulWidget {
  @override
  _User_ImageWidgetState createState() => _User_ImageWidgetState();
}

class _User_ImageWidgetState extends State<User_ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage:
                NetworkImage('https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8bWVufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
