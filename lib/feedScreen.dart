import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FeedScreen extends StatefulWidget {
  FeedScreen() : super();

  final String title = "Feeds";

  @override
  FeedScreenState createState() => FeedScreenState();
}

class FeedScreenState extends State<FeedScreen> {
  //
  CarouselSlider carouselSlider;
  int _current = 0;
  // List imgList = [
  //   'https://images.unsplash.com/photo-1502117859338-fd9daa518a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
  //   'https://images.unsplash.com/photo-1554321586-92083ba0a115?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
  //   'https://images.unsplash.com/photo-1536679545597-c2e5e1946495?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
  //   'https://images.unsplash.com/photo-1543922596-b3bbaba80649?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
  //   'https://images.unsplash.com/photo-1502943693086-33b5b1cfdf2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
  // ];

  List feeds = [
    {
      'title': "CSVTU University Burnt Down",
      'content': "Csvtu university burnt down by some bad boys in bitd,"
    },
    {
      'title': "CSK WON THE IPL @)@) FINALS",
      'content': "The indian captian has once again proved it."
    },
    {
      'title': "Tervis, a mental health app",
      'content': "team tervis from bitd won the hack the mountain hackathon."
    },
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(children: [
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
          // alignment: Alignment.center,
          margin: EdgeInsets.fromLTRB(20, 15, 0, 0),
          child: Text(
            widget.title,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'RobotoMono',
                fontSize: 30.0),
          )),
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            carouselSlider = CarouselSlider(
              height: MediaQuery.of(context).size.height / 1.5,

              initialPage: 0,
              enlargeCenterPage: true,
              // autoPlay: true,
              reverse: false,
              enableInfiniteScroll: true,
              // autoPlayInterval: Duration(seconds: 2),
              // autoPlayAnimationDuration: Duration(milliseconds: 2000),
              // pauseAutoPlayOnTouch: Duration(seconds: 10),
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              items: feeds.map((feedItem) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      constraints: BoxConstraints(minWidth: 300, maxWidth: 500),

                      width: MediaQuery.of(context).size.width / 1.5,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      // decoration: BoxDecoration(
                      //   color: Colors.green,
                      // ),

                      child: Card(
                          elevation: 10,
                          child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                              colors: [Color(0Xff04354B), Color(0XffB2FEFA)],
                              begin: FractionalOffset.topCenter,
                              end: FractionalOffset.bottomCenter,
                            )),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  title: Text(
                                    feedItem['title'],
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(1)),
                                  ),
                                  subtitle: Text(
                                    feedItem['content'],
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.6)),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    TextButton(
                                      child: const Text('Read More'),
                                      onPressed: () {/* ... */},
                                    ),
                                    const SizedBox(width: 8),
                                  ],
                                ),
                              ],
                            ),
                          )),
                    );
                  },
                );
              }).toList(),
            ),
            // SizedBox(
            //   height: 20,
            // ),
          ],
        ),
      ),
    ]));
  }

  goToPrevious() {
    carouselSlider.previousPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  goToNext() {
    carouselSlider.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.decelerate);
  }
}
