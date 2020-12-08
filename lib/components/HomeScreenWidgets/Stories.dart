import 'CreateAStory_Card.dart';
import 'file:///C:/Users/Mike/AndroidStudioProjects/facebook/lib/components/HomeScreenWidgets/usersStories.dart';
import 'package:flutter/material.dart';


class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            CreatStory_Card(),
            UserStories(),
            UserStories(),
            UserStories(),
            UserStories(),
          ],
        ),
      ),
    );
  }
}
