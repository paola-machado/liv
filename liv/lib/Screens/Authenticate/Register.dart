import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liv/Components/loading.dart';
import 'package:liv/Components/haveAccount.dart';
import 'package:liv/Components/roundedButton.dart';
import 'package:liv/Components/roundedInput.dart';
import 'package:liv/Components/roundedPassword.dart';
import 'package:liv/Screens/Backgrounds/BackgroundRegister.dart';
import 'package:liv/Services/Auth.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({this.toggleView});
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  //input
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Background(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Cadastro",
                        style: GoogleFonts.asap(
                          textStyle: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w600,
                            color: Colors.lightBlue,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
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
                    SizedBox(height: 30),
                    RoundedButton(
                      text: "Criar conta",
                      press: () async {
                        if (_formKey.currentState.validate()) {
                          setState(() => loading = true);
                          dynamic result = await _auth
                              .registerWithEmailAndPassword(email, password);
                          if (result == null) {
                            setState(() {
                              error = "E-mail inválido!";
                              loading = false;
                            });
                          }
                        }
                      },
                    ),
                    SizedBox(height: 10),
                    Text(error,
                        style:
                            TextStyle(color: Colors.red[400], fontSize: 14.0)),
                    SizedBox(height: 135),
                    HaveAccount(
                      login: false,
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
