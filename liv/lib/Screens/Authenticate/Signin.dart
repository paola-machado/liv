import 'package:flutter/material.dart';
import 'package:liv/Services/Auth.dart';
import 'package:liv/Components/roundedButton.dart';
import 'package:liv/Components/roundedInput.dart';
import 'package:liv/Components/roundedPassword.dart';
import 'package:liv/Components/haveAccount.dart';
import 'package:liv/Screens/Backgrounds/BackgroundSignin.dart';
import 'package:liv/Screens/Authenticate/Register.dart';

class Signin extends StatefulWidget {
  final Function toggleView;
  Signin({this.toggleView});
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  //input
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 150),
              RoundedInput(
                hintText: "E-mail",
                onChanged: (value) {
                  setState(() => email = value);
                },
              ),
              RoundedPassword(
                onChanged: (value) {
                  setState(() => password = value);
                },
              ),
              SizedBox(height: 20),
              RoundedButton(
                text: "Entrar",
                press: () async {
                  if (_formKey.currentState.validate()) {
                    dynamic result =
                        await _auth.signinWithEmailAndPassword(email, password);
                    if (result == null) {
                      setState(() =>
                          error = "Não foi possível entrar com estes dados");
                    }
                  }
                },
              ),
              SizedBox(height: 10),
              Text(error,
                  style: TextStyle(color: Colors.red[400], fontSize: 14.0)),
              SizedBox(height: 140),
              HaveAccount(
                press: () {
                  widget.toggleView();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
