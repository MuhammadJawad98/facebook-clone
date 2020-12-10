import 'package:flutter/material.dart';

import 'IconsStack.dart';

class FeedCard extends StatefulWidget {
  String name, date, text, img_url,user_image, total_likes, total_comments, total_share;


  FeedCard(
      {this.name,
      this.date,
      this.text,
      this.img_url,
      this.user_image,
      this.total_likes,
      this.total_comments,
      this.total_share});

  @override
  _FeedCardState createState() => _FeedCardState();
}

class _FeedCardState extends State<FeedCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(widget.user_image != null
                          ? widget.user_image
                          : 'https://images.unsplash.com/photo-1464746133101-a2c3f88e0dd9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTV8fG1hbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              widget.name != null
                                  ? widget.name
                                  : 'User Name',
                              softWrap: true,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  widget.date != null
                                      ? widget.date
                                      : 'date',
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  child: Icon(
                                    Icons.public,
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.text != null ? widget.text : 'No text'),
              ),
              Container(
                height: 300,
                child: Image.network(
                  widget.img_url != null
                      ? widget.img_url
                      : 'https://images.unsplash.com/photo-1464746133101-a2c3f88e0dd9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTV8fG1hbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
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
                        Text(widget.total_comments != null
                            ? widget.total_comments
                            : '0 Comments'),
                        SizedBox(
                          width: 5,
                        ),
                        Text(widget.total_share != null
                            ? widget.total_share
                            : '0 Shares')
                      ],
                    )
                  ],
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(onTap: (){},
                      child: FlatButton.icon(
                        icon: Icon(
                          Icons.thumb_up,
                        ),
                        label: Text('Like'),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: FlatButton.icon(
                        icon: Icon(
                          Icons.messenger_outline_rounded,
                        ),
                        label: Text('Comment'),
                      ),
                    ),
                    InkWell(
                      child: FlatButton.icon(
                        icon: Icon(
                          Icons.share,
                        ),
                        label: Text('Share'),
                      ),
                    ),
                  ]),
            ],
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
