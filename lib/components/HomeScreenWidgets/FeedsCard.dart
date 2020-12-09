import 'package:flutter/material.dart';
import 'IconsStack.dart';

class FeedCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Container(
            color: Colors.transparent,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8&auto=format&fit=crop&w=500&q=60'),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Muhammad Jawad Update his profile picture',
                                  softWrap: true,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Yesterday at 43 min',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      child: Icon(Icons.public,
                                        size: 15,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Icon(Icons.more_horiz)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'The beauty of sunsets have inspired people and their creations for centuries. Photographers for example, often wait for that perfect moment when they can capture the glory of a setting sun',
                  ),
                ),
                Container(
                  height: 300,
                  child: Image.network(
                    'https://images.unsplash.com/photo-1464746133101-a2c3f88e0dd9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTV8fG1hbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconsStack(),
                      Row(
                        children: [
                          Text('25 Comments'),
                          SizedBox(
                            width: 5,
                          ),
                          Text('5 Shares')
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children : <Widget>[
                      FlatButton.icon(
                          icon: Icon(Icons.thumb_up,),
                        label: Text('Like'),
                      ),
                      FlatButton.icon(
                        icon: Icon(Icons.messenger_outline_rounded,),
                        label: Text('Comment'),
                      ),
                      FlatButton.icon(
                        icon: Icon(Icons.share,),
                        label: Text('Share'),
                      ),
                    ]),

              ],
            ),
          ),
        ),
        Divider(
          color: Colors.grey[400],
          thickness: 10,
        ),
      ],
    );
  }
}
