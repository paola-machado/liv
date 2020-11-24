import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:liv/Screens/Home.dart';
import 'package:liv/Screens/Landing.dart';
import 'package:liv/Models/User.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    if (user == null) {
      return Landing();
    } else {
      return Home();
    }
  }
}
