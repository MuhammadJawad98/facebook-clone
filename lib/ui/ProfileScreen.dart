import 'file:///C:/Users/Mike/AndroidStudioProjects/facebook/lib/components/ProfileWidgets/ProfilePicCard.dart';
import 'package:flutter/material.dart';
class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: ProfilePicCard(),
    );
  }
}
