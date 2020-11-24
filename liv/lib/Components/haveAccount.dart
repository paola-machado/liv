import 'package:flutter/material.dart';

class HaveAccount extends StatelessWidget {
  final bool login;
  final Function press;
  const HaveAccount({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Não possui uma conta? " : "Já possui uma conta? ",
          style: TextStyle(color: Colors.blueGrey[800]),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Cadastre-se" : "Entre aqui",
            style: TextStyle(
              color: Colors.blueGrey[800],
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
