import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _textFieldController = TextEditingController();
    return new Flexible(
        child: TextField(
      // enabled: false, // to trigger disabledBorder
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
        filled: true,
        fillColor: Color(0xFFF2F2F2),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          borderSide: BorderSide(width: 1, color: Colors.grey[800]),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          borderSide: BorderSide(width: 1, color: Colors.grey),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(
              width: 1,
            )),
        hintText: "What's in your mind?",
        hintStyle: TextStyle(fontSize: 16, color: Colors.grey[000]),
      ),
      obscureText: false,
    ));
  }
}
