import 'package:flutter/material.dart';
import 'package:liv/Components/roundedButton.dart';
import 'package:liv/Components/roundedInput.dart';
import 'package:liv/Components/roundedPassword.dart';
import 'package:liv/Components/haveAccount.dart';
import 'package:liv/Screens/Register.dart';
import 'package:liv/Screens/Home.dart';

class Signin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 80,
              left: 75,
              child: Image.asset("assets/images/logo.png",
                  height: size.height * 0.4),
            ),
            Positioned(
              top: 200,
              child: RoundedInput(
                hintText: "E-mail",
                onChanged: (value) {},
              ),
            ),
            Positioned(
              top: 270,
              child: RoundedPassword(
                onChanged: (value) {},
              ),
            ),
            Positioned(
              top: 370,
              child: RoundedButton(
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
            ),
            Positioned(
              top: 550,
              child: HaveAccount(
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
            ),
          ],
        ),
      ),
    );
  }
}
