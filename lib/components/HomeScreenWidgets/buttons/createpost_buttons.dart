import 'package:flutter/material.dart';
class CreatPost_Buttons extends StatefulWidget {
  String title;
  IconData icon;

  CreatPost_Buttons({this.title, this.icon});

  @override
  _CreatPost_ButtonsState createState() => _CreatPost_ButtonsState();
}

class _CreatPost_ButtonsState extends State<CreatPost_Buttons> {
  @override
  Widget build(BuildContext context) {
    String title=widget.title;
    var icon=widget.icon;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[400]),
        borderRadius: BorderRadius.all(Radius.circular(
            5.0) //                 <--- border radius here
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon,
              size: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 3.0, right: 3.0),
              child: Text('$title'),
            ),
            Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }
}
