import 'package:flutter/material.dart';
import 'package:liv/components/textContainer.dart';
import 'package:email_validator/email_validator.dart';

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
      child: TextFormField(
        validator: (value) => (
            // value.isEmpty ? 'Digite seu e-mail' : null
            EmailValidator.validate(value) ? null : "Utilize um e-mail válido"),
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
