import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/color_constants.dart';
import 'package:instagram_ui/constants/text_constants.dart';

import '../../model/story_highlights.dart';


class ReelsPage extends StatelessWidget {
  const ReelsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: ColorConstants.transparent,
        elevation: 0,
        title: Text(
          TextConstants.reels,
          style: TextStyle(
            color: ColorConstants.white,
          fontSize: 26,
          fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: (){}, icon: Icon(Icons.camera_alt_outlined,
          color: ColorConstants.white,))
        ],
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(highlightsItem[index].thumbnail)
                )
              ),
            );
          }));

  }
}

