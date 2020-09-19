import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';

class StoryViewpage extends StatefulWidget {
  StoryViewpage({Key key}) : super(key: key);

  @override
  _StoryViewpageState createState() => _StoryViewpageState();
}

class _StoryViewpageState extends State<StoryViewpage> {
  final mycontroller = StoryController();
  final List<StoryItem> storyItems = [
    StoryItem.text(
      title: "My First Story",
      backgroundColor: Colors.blue,
      textStyle: TextStyle(
        fontSize: 25,
      ),
    ),
    StoryItem.text(
      title: "My Second Story",
      backgroundColor: Colors.green,
      textStyle: TextStyle(
        fontSize: 25,
      ),
    ),
    StoryItem.pageImage(
      imageFit: BoxFit.contain,
      caption: "Flowers",
      url: "assets/images/sampleimage.JPG",
      controller: null,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: StoryView(
        controller: mycontroller,
        storyItems: storyItems,
        inline: false,
        onComplete: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
