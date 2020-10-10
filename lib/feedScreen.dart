
import 'package:flutter/material.dart';

// void main() {
//   runApp(Feed());
// }

class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
        children: [
        Container(
          child: Image.asset(
            'assets/images/Vector_9.png',
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
              'Feeds',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoMono',
                  fontSize: 30.0),
            )),
      ],
    ));
  }
}
