import 'package:facebook/components/differentObjects/objects.dart';
import 'package:flutter/material.dart';

class Notification_Screen extends StatefulWidget {
  @override
  _Notification_ScreenState createState() => _Notification_ScreenState();
}

class _Notification_ScreenState extends State<Notification_Screen> {
  @override
  Widget build(BuildContext context) {
    return MyApp(
      items: List<ListItem>.generate(
        1000,
        (i) =>
        i % 6 == 0
            ? HeadingItem("Heading $i")
            : MessageItem("Sender $i", "Message body $i"),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  final List<ListItem> items;

  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        // Let the ListView know how many items it needs to build.
        itemCount: items.length,
        // Provide a builder function. This is where the magic happens.
        // Convert each item into a widget based on the type of item it is.
        itemBuilder: (context, index) {
          final item = items[index];

          return ListTile(
            title: item.buildTitle(context),
            subtitle: item.buildSubtitle(context),
          );
        },
      ),
    );
  }
}
