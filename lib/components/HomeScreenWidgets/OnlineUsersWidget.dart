import 'package:flutter/material.dart';

class OnlineUserWidget extends StatefulWidget {
  OnlineUserWidget({Key key, this.imgUrl}) : super(key: key);

  final String imgUrl;
  @override
  _OnlineUserWidgetState createState() => _OnlineUserWidgetState();
}

class _OnlineUserWidgetState extends State<OnlineUserWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              child: CircleAvatar(
                radius: 25,
                backgroundImage:
                    NetworkImage(widget.imgUrl),
                backgroundColor: Colors.red,
              ),
            ),
            Positioned(
              right: 2,
              bottom: 2,
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 8,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
