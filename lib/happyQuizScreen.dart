import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tervis/constants.dart';

class HappyQuiz extends StatefulWidget {
  @override
  _HappyQuizState createState() => _HappyQuizState();
}

class _HappyQuizState extends State<HappyQuiz> {
  var _radioValue1 = 0;
  var _radioValue2 = 0;
  var _radioValue3 = 0;
  var _radioValue4 = 0;
  void _handleRadioValueChange1(int value) {
    setState(() {
      _radioValue1 = 1;
      _radioValue2 = 0;
      _radioValue3 = 0;
      _radioValue4 = 0;
    });
  }

  void _handleRadioValueChange2(int value) {
    setState(() {
      _radioValue1 = 0;
      _radioValue2 = 1;
      _radioValue3 = 0;
      _radioValue4 = 0;
    });
  }

  void _handleRadioValueChange3(int value) {
    setState(() {
      _radioValue1 = 0;
      _radioValue2 = 0;
      _radioValue3 = 1;
      _radioValue4 = 0;
    });
  }

  void _handleRadioValueChange4(int value) {
    setState(() {
      _radioValue1 = 0;
      _radioValue2 = 0;
      _radioValue3 = 0;
      _radioValue4 = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          children: [
            Image.asset(
              "assets/images/happyQuizHeader.png",
              width: double.infinity,
              height: 110,
              fit: BoxFit.fill,
            ),
            Container(
              width: double.infinity,
              height: 110,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "How Did You Wake Up Today?",
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 3,
                child: Container(
                  height: 80,
                  width: min(double.infinity, 600),
                  decoration: BoxDecoration(color: kSecondaryLightBlue),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Radio(
                            value: _radioValue1,
                            groupValue: 1,
                            onChanged: _handleRadioValueChange1,
                          ),
                          Flexible(
                              child: Text(
                            "Lazily, didn't really want to move but had to",
                            style: TextStyle(color: Colors.white),
                          )),
                        ],
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 3,
                child: Container(
                  width: min(double.infinity, 600),
                  decoration: BoxDecoration(color: kSecondaryLightBlue),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Radio(
                            value: _radioValue2,
                            groupValue: 1,
                            onChanged: _handleRadioValueChange2,
                          ),
                          Flexible(
                            child: Text(
                              "I woke up in the worst possible way...",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 3,
                child: Container(
                  height: 80,
                  width: min(double.infinity, 600),
                  decoration: BoxDecoration(color: kSecondaryLightBlue),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Radio(
                            value: _radioValue3,
                            groupValue: 1,
                            onChanged: _handleRadioValueChange3,
                          ),
                          Flexible(
                            child: Text(
                              " The birds were singing, the breeze blowing in my window, it was beautiful",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 3,
                child: Container(
                  width: min(double.infinity, 600),
                  decoration: BoxDecoration(color: kSecondaryLightBlue),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Radio(
                            value: _radioValue4,
                            groupValue: 1,
                            onChanged: _handleRadioValueChange4,
                          ),
                          Flexible(
                            child: Text(
                              "I wish my morning had been more eventful",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      )),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              child: Icon(
                Icons.arrow_left_outlined,
                size: 80,
                color: kPrimaryBlue,
              ),
            ),
            GestureDetector(
              child: Icon(
                Icons.arrow_right_outlined,
                size: 80,
                color: kPrimaryBlue,
              ),
            )
          ],
        )
        // ShowOptions()
      ],
    );
  }
}
