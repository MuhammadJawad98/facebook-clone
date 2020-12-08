import 'package:flutter/material.dart';

class Divider_Widget extends StatefulWidget {
  @override
  _Divider_WidgetState createState() => _Divider_WidgetState();
}

class _Divider_WidgetState extends State<Divider_Widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 8, decoration: BoxDecoration(color: Colors.grey[350]));
  }
}
