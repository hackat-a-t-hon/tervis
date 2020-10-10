import 'package:flutter/material.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/",
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final tabs = [1, 2, 3, 4];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        unselectedItemColor: kPrimaryGray,
        unselectedLabelStyle: TextStyle(color: kPrimaryGray),
        selectedItemColor: kPrimaryGreen,
        selectedLabelStyle: TextStyle(color: kPrimaryGreen),
        selectedFontSize: 14,
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.article_outlined), label: "Feeds"),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit_sharp), label: "Happy Quiz"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Talk"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Profile")
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
