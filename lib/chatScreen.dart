import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  Chat() : super();

  final String title = "Chat";

  @override
  ChatScreen createState() => ChatScreen();
}

class ChatScreen extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(children: [
      Container(
        margin: const EdgeInsets.all(10.0),
        color: Color(0xff04354B),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
      Container(
        decoration: new BoxDecoration(
            color: Colors.white, //new Color.fromRGBO(255, 0, 0, 0.0),
            borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(40.0),
                topRight: const Radius.circular(40.0))),
        margin: const EdgeInsets.all(50.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Type Here',
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
              },
              child: Text('Send'),
            ),
          ),
        ],
      ),
      ),

    ]));
  }
}
