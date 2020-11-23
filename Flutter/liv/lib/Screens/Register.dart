import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liv/Components/haveAccount.dart';
import 'package:liv/Components/roundedButton.dart';
import 'package:liv/Components/roundedInput.dart';
import 'package:liv/Components/roundedPassword.dart';
import 'package:liv/Screens/Signin.dart';
import 'package:liv/Screens/Home.dart';

class Register extends StatelessWidget {
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
              top: 120,
              left: 110,
              child: Text(
                "Cadastro",
                style: GoogleFonts.asap(
                  textStyle: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    color: Colors.lightBlue,
                  ),
                ),
              ),
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
                text: "Criar conta",
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
                login: false,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Signin();
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
