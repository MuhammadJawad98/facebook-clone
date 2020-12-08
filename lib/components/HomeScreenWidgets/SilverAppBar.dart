import 'package:flutter/material.dart';
class SilverAppBar extends StatefulWidget {
  @override
  _SilverAppBarState createState() => _SilverAppBarState();
}

class _SilverAppBarState extends State<SilverAppBar> {
  @override
  Widget build(BuildContext context) {
    return  SliverAppBar(
      title: Text("facebook",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF3b5998),
            fontFamily: 'RobotoMono',
            fontSize: 25,
          )),
      backgroundColor: Colors.white,
      pinned: false,
      actions: <Widget>[
        CircleAvatar(backgroundColor: Colors.grey[200],
          child: Icon(
            Icons.search,
            color: Colors.grey[900],
          ),),
        SizedBox(width: 20,),
        CircleAvatar(backgroundColor: Colors.grey[200],
          child: Icon(
            Icons.notifications,
            color: Colors.grey[900],
          ),),
        SizedBox(width: 20,),
      ],
    );
  }
}
// DefaultTabController(
// length: 4,
// child: Scaffold(
// appBar: AppBar(
// bottom: TabBar(
// tabs: [
// Tab(text: 'Tab 1',),
// Tab(text: 'Tab 1',),
// Tab(text: 'Tab 1',),
// Tab(text: 'Tab 1',),
// ],
// ),
// ),
// ),
// )
