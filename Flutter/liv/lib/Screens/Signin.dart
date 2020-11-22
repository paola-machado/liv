import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:liv/Components/roundedButton.dart';
import 'package:liv/Screens/Signin.dart';
import 'package:liv/Screens/Register.dart';
import 'package:google_fonts/google_fonts.dart';

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
              top: 25,
              left: 70,
              child: Image.asset("assets/images/logo.png",
                  height: size.height * 0.4),
            ),
          ],
        ),
      ),
    );
  }
}
