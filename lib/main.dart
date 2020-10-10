import 'package:flutter/material.dart';

import 'constants.dart';
import 'homepageReturnScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: "/",
      routes: {
        '/': (context) => SplashScreen(),
      },
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final tabs = [
    HomePage(),
    Container(
      child: Text("Feeds"),
    ),
    Container(
      child: Text("Happy Quiz"),
    ),
    Container(
      child: Text("Talk"),
    ),
    Container(
      child: Text("Profile"),
    )
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
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
