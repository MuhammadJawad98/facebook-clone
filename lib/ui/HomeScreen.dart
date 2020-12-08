import 'file:///C:/Users/Mike/AndroidStudioProjects/facebook/lib/components/HomeScreenWidgets/CreateAStory_Card.dart';
import 'file:///C:/Users/Mike/AndroidStudioProjects/facebook/lib/components/HomeScreenWidgets/WritePostWidget.dart';
import 'package:facebook/components/HomeScreenWidgets/NewFeeds.dart';
import 'package:facebook/components/HomeScreenWidgets/OnlineUsersWidget.dart';
import 'package:facebook/components/HomeScreenWidgets/PostWriteWidget.dart';
import 'package:facebook/components/HomeScreenWidgets/Stories.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              height: 8, decoration: BoxDecoration(color: Colors.grey[350])),
          PostWriteWidget(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  FlatButton(
                    textColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.blue)),
                    onPressed: () {},
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.video_call_sharp,
                          color: Colors.deepPurple,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Create Room",
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  OnlineUserWidget(),
                  OnlineUserWidget(),
                  OnlineUserWidget(),
                  OnlineUserWidget(),
                  OnlineUserWidget(),
                  OnlineUserWidget(),
                  OnlineUserWidget(),
                  OnlineUserWidget(),
                  OnlineUserWidget(),
                ],
              ),
            ),
          ),
          Container(
              height: 8, decoration: BoxDecoration(color: Colors.grey[350])),
          Stories(),
          Container(
              height: 8, decoration: BoxDecoration(color: Colors.grey[350])),
          NewFeeds(),
        ],
      ),
    );
  }
}
