import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tervis/constants.dart';

class HomeNewScreen extends StatefulWidget {
  @override
  _HomeNewScreenState createState() => _HomeNewScreenState();
}

class _HomeNewScreenState extends State<HomeNewScreen> {
  var _screen = [firstScreen()];
  int _currentScreen = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                "assets/images/homepageBackground.png",
                width: double.infinity,
                height: 600,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              alignment: Alignment.topCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Welcome To Tervis",
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.1),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Hello there, Let’s start by\nunderstanding you a little bit.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: kPrimaryGreen),
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _screen[_currentScreen],
                      GestureDetector(
                        child: Image.asset(
                          "assets/images/nextButton.png",
                          height: 60,
                          width: 60,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

firstScreen() {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.all(20),
        constraints: BoxConstraints(minWidth: 200, maxWidth: 640),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            fillColor: Colors.white,
            focusColor: kSecondaryLightBlue,
            labelText: 'Name',
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.all(20),
        constraints: BoxConstraints(minWidth: 200, maxWidth: 640),
        child: TextField(
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Age',
          ),
        ),
      )
    ],
  );
}
