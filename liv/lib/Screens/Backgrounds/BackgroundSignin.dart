import 'package:flutter/material.dart';
import 'package:liv/Screens/Landing.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.lightBlue),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 20,
              child: Image.asset("assets/images/logo.png",
                  height: size.height * 0.4),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
