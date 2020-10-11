import 'package:flutter/material.dart';
import 'package:tervis/happyQuizScreen.dart';

import 'constants.dart';
import 'feedScreen.dart';
import 'homepageReturnScreen.dart';
import 'profileScreen.dart';
import 'splashScreen.dart';
import 'talkWithSomeone.dart';

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
      initialRoute: "/splash",
      routes: {
        '/': (context) => HomeScreen(),
        '/splash': (context) => SplashScreen(),
      },
      // home: SplashScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final tabs = [
    HomePage(),
    FeedScreen(),
    HappyQuiz(),
    TalkWithSomeone(),
    ProfileScreen(),
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
