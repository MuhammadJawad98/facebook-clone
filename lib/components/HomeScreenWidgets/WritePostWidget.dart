import 'package:facebook/components/HomeScreenWidgets/user_circleImage.dart';
import 'package:facebook/ui/PostWritingScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'RoundedTextField.dart';

class WritePost extends StatefulWidget {
  @override
  _WritePostState createState() => _WritePostState();
}

class _WritePostState extends State<WritePost> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          User_ImageWidget(),
          GestureDetector(
            child: new FlatButton(
              child: new Text("What's come in your mind?"),
              padding: EdgeInsets.all(12),
              onPressed: null,
            ),
            onTap: (){
              Navigator.of(context).push(_createRoute(PostWritingScreen()));
            },
          )
        ],
      ),
    );
  }
  Route _createRoute(Widget widget) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => widget,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }


}
