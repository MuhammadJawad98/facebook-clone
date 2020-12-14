import 'package:flutter/material.dart';
Widget bottomSheet() {
  return DraggableScrollableSheet(
      initialChildSize: 0.4,
      // controller: _controller,
      builder: (context, scrollController) {
        return SingleChildScrollView(
          controller: scrollController,
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FlatButton.icon(
                  onPressed: () {
                    print('Button Clicked.');
                  },
                  label: Text(
                    'Photo/Video',
                    style: TextStyle(color: Colors.black87),
                  ),
                  icon: Icon(
                    Icons.photo_album,
                    color: Colors.green,
                  ),
                  textColor: Colors.black87,
                  splashColor: Colors.grey[350],
                ),
                FlatButton.icon(
                  onPressed: () {
                    print('Button Clicked.');
                  },
                  label: Text(
                    'Tag Friends',
                    style: TextStyle(color: Colors.black87),
                  ),
                  icon: Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                  textColor: Colors.black87,
                  splashColor: Colors.grey[350],
                ),
                FlatButton.icon(
                  onPressed: () {
                    print('Button Clicked.');
                  },
                  label: Text(
                    'Feeling/Activity',
                    style: TextStyle(color: Colors.black87),
                  ),
                  icon: Icon(
                    Icons.emoji_emotions,
                    color: Colors.amber,
                  ),
                  textColor: Colors.black87,
                  splashColor: Colors.grey[350],
                ),
                FlatButton.icon(
                  onPressed: () {
                    print('Button Clicked.');
                  },
                  label: Text(
                    'Check In',
                    style: TextStyle(color: Colors.black87),
                  ),
                  icon: Icon(
                    Icons.location_on,
                    color: Colors.redAccent,
                  ),
                  textColor: Colors.black87,
                  splashColor: Colors.grey[350],
                ),
                FlatButton.icon(
                  onPressed: () {
                    print('Button Clicked.');
                  },
                  label: Text(
                    'Camera',
                    style: TextStyle(color: Colors.black87),
                  ),
                  icon: Icon(
                    Icons.camera_alt,
                    color: Colors.blue,
                  ),
                  textColor: Colors.black87,
                  splashColor: Colors.grey[350],
                ),
                FlatButton.icon(
                  onPressed: () {
                    print('Button Clicked.');
                  },
                  label: Text(
                    'Live Video',
                    style: TextStyle(color: Colors.black87),
                  ),
                  icon: Icon(
                    Icons.video_call,
                    color: Colors.red,
                  ),
                  textColor: Colors.black87,
                  splashColor: Colors.grey[350],
                ),
                FlatButton.icon(
                  onPressed: () {
                    print('Button Clicked.');
                  },
                  label: Text(
                    'Background Color',
                    style: TextStyle(color: Colors.black87),
                  ),
                  icon: Icon(
                    Icons.sort_by_alpha,
                    color: Colors.teal[400],
                  ),
                  textColor: Colors.black87,
                  splashColor: Colors.grey[350],
                ),
                FlatButton.icon(
                  onPressed: () {
                    print('Button Clicked.');
                  },
                  label: Text(
                    'Watch Party',
                    style: TextStyle(color: Colors.black87),
                  ),
                  icon: Icon(
                    Icons.movie,
                    color: Colors.deepPurple,
                  ),
                  textColor: Colors.black87,
                  splashColor: Colors.grey[350],
                ),
                FlatButton.icon(
                  onPressed: () {
                    print('Button Clicked.');
                  },
                  label: Text(
                    '3D Photo',
                    style: TextStyle(color: Colors.black87),
                  ),
                  icon: Icon(
                    Icons.photo,
                    color: Colors.deepPurple,
                  ),
                  textColor: Colors.black87,
                  splashColor: Colors.grey[350],
                ),
                FlatButton.icon(
                  onPressed: () {
                    print('Button Clicked.');
                  },
                  label: Text(
                    'GIF',
                    style: TextStyle(color: Colors.black87),
                  ),
                  icon: Icon(
                    Icons.gif,
                    color: Colors.deepPurple,
                  ),
                  textColor: Colors.black87,
                  splashColor: Colors.grey[350],
                ),
                FlatButton.icon(
                  onPressed: () {
                    print('Button Clicked.');
                  },
                  label: Text(
                    'Sell Something',
                    style: TextStyle(color: Colors.black87),
                  ),
                  icon: Icon(
                    Icons.flag,
                    color: Colors.green,
                  ),
                  textColor: Colors.black87,
                  splashColor: Colors.grey[350],
                ),
                FlatButton.icon(
                  onPressed: () {
                    print('Button Clicked.');
                  },
                  label: Text(
                    'Ask for Recommendations',
                    style: TextStyle(color: Colors.black87),
                  ),
                  icon: Icon(
                    Icons.chat_bubble,
                    color: Colors.deepPurple,
                  ),
                  textColor: Colors.black87,
                  splashColor: Colors.grey[350],
                ),
                FlatButton.icon(
                  onPressed: () {
                    print('Button Clicked.');
                  },
                  label: Text(
                    'HostaQ&A',
                    style: TextStyle(color: Colors.black87),
                  ),
                  icon: Icon(
                    Icons.chat,
                    color: Colors.red,
                  ),
                  textColor: Colors.black87,
                  splashColor: Colors.grey[350],
                ),
                FlatButton.icon(
                  onPressed: () {
                    print('Button Clicked.');
                  },
                  label: Text(
                    'Create Room',
                    style: TextStyle(color: Colors.black87),
                  ),
                  icon: Icon(
                    Icons.video_call,
                    color: Colors.deepPurple,
                  ),
                  textColor: Colors.black87,
                  splashColor: Colors.grey[350],
                ),
              ],
            ),
          ),
        );
      });
}

