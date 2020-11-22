import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:liv/Components/roundedButton.dart';
import 'package:liv/Screens/Signin.dart';
import 'package:liv/Screens/Register.dart';
import 'package:google_fonts/google_fonts.dart';

class Landing extends StatelessWidget {
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
              top: 25,
              left: 70,
              child: Image.asset("assets/images/logo.png",
                  height: size.height * 0.4),
            ),
            SvgPicture.asset(
              "assets/images/art.svg",
              height: size.height * 0.6,
            ),
            Positioned(
              top: 475,
              child: RoundedButton(
                text: "Entrar",
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
            Positioned(
              top: 540,
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Register();
                      },
                    ),
                  );
                },
                child: Text(
                  "Não possui uma conta? Cadastre-se",
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
