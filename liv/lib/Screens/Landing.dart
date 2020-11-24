import 'package:flutter/material.dart';
import 'package:liv/Services/Auth.dart';
import 'package:liv/Screens/Backgrounds/BackgroundLanding.dart';
import 'package:liv/Components/haveAccount.dart';
import 'package:liv/Components/roundedButton.dart';
import 'package:liv/Screens/Authenticate/Authenticate.dart';
import 'package:liv/Screens/Authenticate/Register.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  final AuthService _auth = AuthService();
  bool showSignIn = true;

  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 520),
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
                child: Text("Entrar anonimamente",
                    style: TextStyle(color: Colors.blue[300])),
                onPressed: () async {
                  dynamic result = await _auth.signInAnon();

                  if (result == null) {
                    print('Erro ao logar');
                  } else {
                    print('Logado');
                    print(result);
                  }
                },
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
