import 'package:flutter/material.dart';

class NotificationWidget extends StatefulWidget {
  String img_url, not_heading, not_txt, time;

  NotificationWidget(this.img_url, this.not_heading, this.not_txt, this.time);

  @override
  _NotificationWidgetState createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(widget.img_url),
              radius: 30,
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.not_heading,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                      child: Container(
                        width: 260,
                        child: Text(
                          widget.not_txt,
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 48, 48, 54)),
                        ),
                      ),
                    ),
                    Text(
                      widget.time + " ago",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
            Icon(
              Icons.more_horiz,
            )
          ],
        ),
      ),
    );
  }
}
