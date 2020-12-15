import 'package:facebook/components/model/const.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';


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
          CircleAvatar(radius: 30,
            backgroundImage: NetworkImage(Const.list_userfeed[0].user_image),
            backgroundColor: Colors.redAccent,

          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
