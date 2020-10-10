import 'package:flutter/material.dart';

// void main() {
//   runApp(TalkWithSomeone());
// }

class TalkWithSomeone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        // child: Text("Talk with someone"),
        child: Stack(
      children: [
        Container(
          // alignment: Alignment.center,
          child: Image.asset(
            'assets/images/Vector_9.png',
            // height: 250,
            // width: double.infinity,
            // fit: BoxFit.cover,
          ),
        ),
        Container(
          alignment: Alignment.bottomRight,
          // margin: EdgeInsets.fromLTRB(70, 200, 0, 0),
          child: Image.asset(
            'assets/images/Subtract1.png',
            // height: 250,
            // width: double.infinity,
            // fit: BoxFit.cover,
          ),
        ),
        Container(
            // alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(20, 15, 0, 0),
            child: Text(
              'Talk With Someone',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoMono',
                  fontSize: 30.0),
            )),
        Container(
            // alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(30, 92, 0, 0),
            padding: EdgeInsets.all(10),
            child: Text(
              'Talking with another human can trigger hormones that relieve stress when you’re feeling agitated and can help you to calm and soothe your nervous system.',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'RobotoMono',
                  fontSize: 18.0),
            )),
        Container(
            width: 350,
            height: 150,
            margin: EdgeInsets.fromLTRB(60, 250, 10, 0),
            padding: EdgeInsets.all(10),
            child: Card(
              child: Column(
                children: [
                  const ListTile(
                    title: Text('Talk With an Expert'),
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 15),
                    subtitle: Text(
                        'Hi, I am expert you can talk with me expert since 1 hour'),
                  )
                ],
              ),
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            )),
        Container(
            width: 350,
            height: 150,
            margin: EdgeInsets.fromLTRB(10, 460, 0, 0),
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
