import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreatStory_Card extends StatelessWidget {
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
                  // Image.network(
                  //   "https://images.unsplash.com/photo-1581382575275-97901c2635b7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8bWFufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                  //   height: 100,
                  //   width: 100,
                  //   fit: BoxFit.cover,
                  // ),
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: FadeInImage.assetNetwork(
                      height: 100,
                        width: 100,
                      placeholder: 'waiting.png',
                      image:
                          "https://images.unsplash.com/photo-1581382575275-97901c2635b7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8bWFufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: new Text(
                      'Create a Story',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            new Positioned(
                top: 80,
                left: 35,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 15,
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ))
          ],
        ),
      ),
      margin: EdgeInsets.only(left: 5, right: 5),
    );
  }
}
