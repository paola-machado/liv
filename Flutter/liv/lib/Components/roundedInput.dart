import 'package:flutter/material.dart';
import 'package:liv/components/textContainer.dart';

class RoundedInput extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInput({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: Colors.blue[300],
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.blue[300],
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
