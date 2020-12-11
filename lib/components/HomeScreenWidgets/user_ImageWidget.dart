import 'package:facebook/components/model/const.dart';
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
            backgroundImage:
                NetworkImage(Const.list_userfeed[0].user_image),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
