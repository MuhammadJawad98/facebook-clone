import 'package:facebook/ui/HomeScreen.dart';
import 'package:facebook/ui/Notification_Screen.dart';
import 'package:facebook/ui/ProfileScreen.dart';
import 'package:facebook/ui/Search_Screen.dart';
import 'package:facebook/ui/Setting_Screen.dart';
import 'package:facebook/ui/VideoPlayer_Screen.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'components/ProfileWidgets/ProfilePicCard.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp()));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
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
              IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black87,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchScreen()),
                    );
                  }),
              SizedBox(
                width: 20,
              ),
              CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(
                  MdiIcons.facebookMessenger,
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
