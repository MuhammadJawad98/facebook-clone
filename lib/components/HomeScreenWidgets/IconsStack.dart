import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconsStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: const EdgeInsets.all(8.0),

        // alignment: FractionalOffset.center,
        child: Row(
          children: [
            Icon(
              Icons.thumb_up,
              color: Colors.blue,
            ),
            Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            SizedBox(width: 10),
            Container(
                child: Text(
              '17K',
              textAlign: TextAlign.right,
            )),
          ],
        ));
  }
}
