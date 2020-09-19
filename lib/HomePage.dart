import 'package:flutter/material.dart';
import 'package:statusapp/StoryViewPage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          color: Colors.blue[100],
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => StoryViewpage()));
          },
          child: Text("View Story"),
        ),
      ),
    );
  }
}
