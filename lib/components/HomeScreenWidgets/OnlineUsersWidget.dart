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
                radius: 20,
                backgroundImage:
                    NetworkImage(widget.imgUrl),

              ),
            ),
            Positioned(
              right: 1,
              bottom: 1,
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 6,
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
