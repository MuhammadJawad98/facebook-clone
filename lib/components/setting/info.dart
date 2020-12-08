import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  String img_url, name, content, not;

  Info(this.img_url, this.name, this.content, this.not);

  // Info(this.img_url, this.name, this.content);

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(widget.img_url),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    (widget.not == null)
                        ? Text(widget.content,style: TextStyle(color: Colors.black),):
                    new Row(children: [
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.blue,
                      ),
                      SizedBox(width: 5),
                      Text(widget.content),
                    ]),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
