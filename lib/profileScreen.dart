import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// void main() {
//   runApp(ProfileScreen());
// }

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];
    var data1 = [0.0, -2.0, 3.5, -2.0, 0.5, 0.7, 0.8, 1.0, 2.0, 3.0, 3.2];

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
              height: 130,
              margin: EdgeInsets.fromLTRB(10, 100, 10, 0),
              padding: EdgeInsets.all(10),
              child: Card(
                child: Column(
                  children: [
                    const ListTile(
                      title: Text(
                        'GS Rohit',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                      subtitle: Text(
                        'I am a Happy Guy',
                        textAlign: TextAlign.center,
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
                margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                width: 200.0,
                child: Text(
                  'Foods Records',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                color: Colors.red,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Text(
                  'Sleep Records',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                width: 200.0,
                color: Colors.blue,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                width: 200.0,
                child: Text(
                  'Water Intakes',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                color: Colors.green,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                width: 200.0,
                child: Text(
                  'Step Walked',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                color: Colors.yellow,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                width: 200.0,
                child: Text(
                  'Sleep Records',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                color: Colors.orange,
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.topCenter,
          // margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/Vector11.png"),
            fit: BoxFit.cover,
          )),
          child: Material(
            // color: Colors.white,
            elevation: 14.0,
            borderRadius: BorderRadius.circular(24.0),
            shadowColor: Color(0x802196F3),
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Text(
                            'Happy Quiz',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Text(
                            'another text area',
                            style: TextStyle(
                              fontSize: 30.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Text(
                            "ek or text area",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(1.0),
                          child: new Sparkline(
                            data: data,
                            lineColor: Color(0xffff6101),
                            pointsMode: PointsMode.all,
                            pointSize: 8.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          // child: Image.asset(
          //   'assets/images/Vector11.png',
          //   // height: 120,
          //   width: double.infinity,
          //   fit: BoxFit.cover,
          // ),
        ),
        Container(
          child: Material(
            color: Colors.white,
            elevation: 14.0,
            borderRadius: BorderRadius.circular(24.0),
            shadowColor: Color(0x802196F3),
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Text(
                            'title',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Text(
                            'priceVal',
                            style: TextStyle(
                              fontSize: 30.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Text(
                            "subtitle",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(1.0),
                          child: new Sparkline(
                            data: data1,
                            fillMode: FillMode.below,
                            fillGradient: new LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.amber[800], Colors.amber[200]],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
            width: 300,
            height: 150,
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            padding: EdgeInsets.all(10),
            child: Card(
              child: Column(
                children: [
                  const ListTile(
                    title: Text(
                      'More Details',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 15),
                    subtitle: Text(
                      'check more details like change language, personalistion and many more',
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
