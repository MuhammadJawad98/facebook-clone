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
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                child: FadeInImage.assetNetwork(
                  width: 100,
                  height: 160,
                  placeholder: 'waiting.png',
                  image:
                      "https://images.unsplash.com/photo-1534030347209-467a5b0ad3e6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjF8fG1hbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                  fit: BoxFit.cover,
                ),
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
                )),
            new Positioned(
              child: Container(
                 width: 100,
                  color: Color.fromRGBO(255, 255, 255, 0.19),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Jawad',
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  )),
              bottom: 1,
            )
          ],
        ),
      ),
      margin: EdgeInsets.only(left: 5, right: 5),
    );
  }
}
