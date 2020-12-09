import 'package:facebook/ui/HomeScreen.dart';
import 'package:facebook/ui/Notification_Screen.dart';
import 'package:facebook/ui/ProfileScreen.dart';
import 'package:facebook/ui/Setting_Screen.dart';
import 'package:facebook/ui/VideoPlayer_Screen.dart';
import 'package:flutter/material.dart';

import 'components/ProfileWidgets/ProfilePicCard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text('facebook',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3b5998),
                  fontFamily: 'RobotoMono',
                  fontSize: 25,
                )),
            backgroundColor: Colors.white,
            actions: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.search,
                  color: Colors.grey[900],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  Icons.near_me_rounded,
                  color: Colors.grey[900],
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.grey,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.ondemand_video,
                    color: Colors.grey,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.group,
                    color: Colors.grey,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.grey,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomeScreen(),
              VideoPlayer_Screen(),
              ProfileScreen(),
              NotificationScreen(),
              Setting_Screen(),
            ],
          ),
        ),
      ),
    );
  }
}
