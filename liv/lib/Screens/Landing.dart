import 'package:flutter/material.dart';
import 'package:liv/Components/roundedButton.dart';
import 'package:liv/Components/loading.dart';
import 'package:liv/Screens/Backgrounds/BackgroundLanding.dart';
import 'package:liv/Screens/Authenticate/Authenticate.dart';
import 'package:liv/Services/Auth.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  final AuthService _auth = AuthService();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Background(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 550),
                  RoundedButton(
                    text: "Entrar",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Authenticate()),
                      );
                    },
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: FlatButton(
                      child: Text(
                        "Entrar anonimamente",
                        style: TextStyle(color: Colors.blue[300]),
                      ),
                      onPressed: () async {
                        setState(() => loading = true);
                        dynamic result = await _auth.signInAnon();

                        if (result == null) {
                          print('Erro ao logar');
                          setState(() {
                            loading = false;
                          });
                        } else {
                          print('Logado');
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
