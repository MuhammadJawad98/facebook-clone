import 'package:flutter/material.dart';

import 'FeedsCard.dart';
// import 'package:flutter_reaction_button/flutter_reaction_button.dart';

class NewFeeds extends StatefulWidget {
  @override
  _NewFeedsState createState() => _NewFeedsState();
}

class _NewFeedsState extends State<NewFeeds> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FeedCard(),
        FeedCard(),
        FeedCard(),
        FeedCard(),
        FeedCard(),
      ],
    );
  }
}
