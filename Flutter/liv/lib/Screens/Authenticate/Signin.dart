import 'package:flutter/material.dart';
import 'package:liv/Components/roundedButton.dart';
import 'package:liv/Components/roundedInput.dart';
import 'package:liv/Components/roundedPassword.dart';
import 'package:liv/Components/haveAccount.dart';
import 'package:liv/Screens/Backgrounds/BackgroundSignin.dart';
import 'package:liv/Screens/Authenticate/Register.dart';
import 'package:liv/Screens/Home.dart';

class Signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 200),
            RoundedInput(
              hintText: "E-mail",
              onChanged: (value) {},
            ),
            RoundedPassword(
              onChanged: (value) {},
            ),
            SizedBox(height: 20),
            RoundedButton(
              text: "Entrar",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Home();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 150),
            HaveAccount(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Register();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
