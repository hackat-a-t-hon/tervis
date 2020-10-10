import 'package:flutter/material.dart';

// void main() {
//   runApp(ProfileScreen());
// }

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      // This next line does the trick.
      // padding: EdgeInsets.fromLTRB(0, 360, 0, 0),
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
            child: Stack(children: [
          Container(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/images/profilehai.png',
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
              width: 400,
              height: 150,
              margin: EdgeInsets.fromLTRB(10, 100, 10, 0),
              padding: EdgeInsets.all(10),
              child: Card(
                child: Column(
                  children: [
                    const ListTile(
                      title: Text(
                        'Talk With an Volunteer',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 15),
                      subtitle: Text(
                        'Hi, I am Volunteer you can talk with me expert since 1 hour',
                      ),
                    )
                  ],
                ),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              )),
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.fromLTRB(0, 60, 0, 0),
            child: Image.asset(
              'assets/images/profile.png',
              height: 120,
              // width:
              // fit: BoxFit.cover,
            ),
          )
        ])),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 160.0,
                color: Colors.red,
              ),
              Container(
                width: 160.0,
                color: Colors.blue,
              ),
              Container(
                width: 160.0,
                color: Colors.green,
              ),
              Container(
                width: 160.0,
                color: Colors.yellow,
              ),
              Container(
                width: 160.0,
                color: Colors.orange,
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.topCenter,
          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Image.asset(
            'assets/images/Vector11.png',
            // height: 120,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Container(
            width: 300,
            height: 150,
            margin: EdgeInsets.fromLTRB(10, 40, 10, 10),
            padding: EdgeInsets.all(10),
            child: Card(
              child: Column(
                children: [
                  const ListTile(
                    title: Text(
                      'Talk With an Volunteer',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 15),
                    subtitle: Text(
                      'Hi, I am Volunteer you can talk with me expert since 1 hour',
                    ),
                  )
                ],
              ),
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ))
      ],
    ));
  }
}
