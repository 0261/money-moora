import 'package:flutter/material.dart';
import 'package:money_moora/constant.dart';
import 'package:money_moora/screens/LandingScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: fmainColor,
        body: LandingScreen(),
      ),
    );
  }
}
