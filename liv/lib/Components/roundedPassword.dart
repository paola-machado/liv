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
      child: TextFormField(
        validator: (value) => value.length < 6
            ? 'Sua senha precisa ter no mínimo 6 dígitos'
            : null,
        obscureText: true,
        onChanged: onChanged,
        cursorColor: Colors.blue[300],
        decoration: InputDecoration(
          hintText: "Senha",
          icon: Icon(
            Icons.lock,
            color: Colors.blue[300],
          ),
          suffixIcon: IconButton(
            icon: Icon(
              Icons.visibility,
              color: Colors.blue[300],
            ),
            onPressed: () {},
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
