import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:html' as html;

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
      'title': "Motivation: The Scientific Guide on How to Get and Stay Motivated",
      'content': '''Motivation is a powerful, yet tricky beast. Sometimes it is really easy to get motivated, and you find yourself wrapped up in a whirlwind of excitement. Other times, it is nearly impossible to figure out how to motivate yourself and you're trapped in a death spiral of procrastination. This page contains the best ideas and most useful research on how to get and stay motivated.
This isn't going to be some rah-rah, pumped-up motivational speech.
''',
  'url': 'https://jamesclear.com/motivation#How%20to%20Get%20Motivated'
    },
    {
      'title': "How to Stay Motivated by Using the Goldilocks Rule",
      'content': '''
      Imagine you are playing tennis. If you try to play a serious match against a four-year-old, you will quickly become bored. The match is too easy. On the opposite end of the spectrum, if you try to play a serious match against a professional tennis player like Roger Federer or Serena Williams, you will find yourself demotivated for a different reason. The match is too difficult.

Compare these experiences to playing tennis against someone who is your equal.''',
'url': "https://jamesclear.com/motivation#How%20to%20Stay%20Motivated",
    },
    {
      'title': "What to Do When Motivation Fades",
      'content': '''Inevitably, your motivation to perform a task will dip at some point. What happens when motivation fades? I don't claim to have all the answers, but here’s what I try to remind myself of when I feel like giving up.

Your Mind is a Suggestion Engine

Consider every thought you have as a suggestion, not an order. Right now, as I'm writing this, my mind is suggesting that I feel tired. It is suggesting that I give up. It is suggesting that I take an easier path.''',
"url": "https://jamesclear.com/motivation#What%20to%20Do%20When%20Motivation%20Fades",
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
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        height: 2,
                                        color: Colors.white.withOpacity(1)),
                                  ),
                                  subtitle: Text(
                                    feedItem['content'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize:18,
                                      height: 1.2,
                                        color: Colors.white.withOpacity(0.9)),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    TextButton(
                                      
                                      child: const Text('Read More'),
                                      onPressed: () {html.window.open(feedItem["url"], 'feed');},
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

