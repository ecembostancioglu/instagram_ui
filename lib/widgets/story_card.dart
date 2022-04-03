import 'package:flutter/material.dart';


class StoryCard extends StatelessWidget {
  StoryCard(
      {Key? key,
        required this.name,
        required this.assetimage})
      : super(key: key);


  String name;
  String assetimage;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:20,left: 16),
      child: Column(
        children:  [
          Stack(
              children: <Widget>[
                CircleAvatar(
                  radius: 39,
                  backgroundImage:AssetImage('assets/story_bg.png'),
                  child: CircleAvatar(
                    radius: 37,
                    backgroundImage:AssetImage('assets/white_bg.png'),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(assetimage),
                    ),
                  ),
                ),
              ]
          ),
           Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text(name,
                  overflow: TextOverflow.ellipsis)),
        ],
      ),
    );
  }
}