import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:liv/Models/User.dart';
import 'package:liv/Services/Auth.dart';
import 'package:liv/Wrapper.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Liv',
        theme: ThemeData(
          primaryColor: Colors.lightBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        home: Wrapper(),
      ),
    );
  }
}
