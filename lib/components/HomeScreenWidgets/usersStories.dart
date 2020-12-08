import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserStories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: <Widget>[
            Container(
              width: 100,
              height: 160,
              child: Column(
                children: <Widget>[
                  Image.network(
                    "https://images.unsplash.com/photo-1534030347209-467a5b0ad3e6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjF8fG1hbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                    loadingBuilder: (context, child, progress) {
                      return progress == null
                          ? child
                          : LinearProgressIndicator();
                    },
                    semanticLabel: 'User Feeds Image',
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            new Positioned(
                top: 8,
                left: 5,
                child: CircleAvatar(
                  backgroundColor: Colors.blue[700],
                  radius: 15,
                  child: CircleAvatar(
                    radius: 12,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1497551060073-4c5ab6435f12?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzF8fG1hbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                  ),
                ))
          ],
        ),
      ),
      margin: EdgeInsets.only(left: 5, right: 5),
    );
  }
}
