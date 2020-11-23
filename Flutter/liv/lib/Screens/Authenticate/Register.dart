import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liv/Components/haveAccount.dart';
import 'package:liv/Components/roundedButton.dart';
import 'package:liv/Components/roundedInput.dart';
import 'package:liv/Components/roundedPassword.dart';
import 'package:liv/Screens/Authenticate/Signin.dart';
import 'package:liv/Screens/Home.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 150),
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
            SizedBox(height: 30),
            RoundedInput(
              hintText: "E-mail",
              onChanged: (value) {},
            ),
            RoundedPassword(
              onChanged: (value) {},
            ),
            SizedBox(height: 30),
            RoundedButton(
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
            SizedBox(height: 145),
            HaveAccount(
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
          ],
        ),
      ),
    );
  }
}
