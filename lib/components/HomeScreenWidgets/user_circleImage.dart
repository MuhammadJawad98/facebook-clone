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
                NetworkImage('https://www.woolha.com/media/2020/03/eevee.png'),
            backgroundColor: Colors.red,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
