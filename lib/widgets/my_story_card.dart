import 'package:flutter/material.dart';
import '../constants/color_constants.dart';

class MyStoryCard extends StatelessWidget {
  MyStoryCard(
      {Key? key,
        required this.name,
        required this.assetimage,
        required this.addstory})
      : super(key: key);


  String name;
  String assetimage;
  String addstory;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:20,left: 16),
      child: Column(
        children:  [
          Stack(
              children:<Widget>[
                CircleAvatar(
                  radius: 39,
                  backgroundImage:AssetImage('assets/story_bg.png'),
                  child: CircleAvatar(
                    radius: 37,
                    backgroundImage: AssetImage('assets/white_bg.png'),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage(assetimage),
                    ),
                  ),
                ),
                 Positioned(
                    right: -2,
                    bottom: -2,
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: ColorConstants.white,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundImage: AssetImage(addstory),
                      ),
                    ))]
          ),
           Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text(name))
        ],
      ),
    );
  }
}




