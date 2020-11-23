import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

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
              left: 75,
              child: Image.asset("assets/images/logo.png",
                  height: size.height * 0.4),
            ),
            Positioned(
              child: SvgPicture.asset(
                "assets/images/art.svg",
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
