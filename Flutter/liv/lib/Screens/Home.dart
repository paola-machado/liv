import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Stack(alignment: Alignment.center, children: <Widget>[
          Text("Hello"),
        ]),
      ),
    );
  }
}
