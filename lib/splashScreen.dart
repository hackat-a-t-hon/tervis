import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tervis/constants.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
// TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () => Navigator.pushNamed(context, '/'));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryBlue,
      body: Center(
        child: Image.asset(
          "assets/images/splashScreenLogo.png",
          height: 350,
          width: 350,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
