import 'package:flutter/material.dart';
import 'package:liv/components/textContainer.dart';

class RoundedPassword extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPassword({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: Colors.blue[300],
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: Colors.blue[300],
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Colors.blue[300],
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
