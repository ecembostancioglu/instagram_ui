import 'package:flutter/material.dart';
import 'package:instagram_ui/widgets/my_story_card.dart';
import 'package:instagram_ui/widgets/story_card.dart';
import '../constants/text_constants.dart';
import '../screens/home_page.dart';

Widget StoryProfile(){
  return SingleChildScrollView(
    child: Column(
      children: [
        Divider(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              MyStoryCard(
                  name: TextConstants.yourstory,
                  assetimage: 'assets/myprofile.png',
                  addstory: 'assets/addstory.png'),
              StoryCard(
                  name: TextConstants.gag,
                  assetimage:'assets/gag.png'),
              StoryCard(
                  name:TextConstants.eceersunar,
                  assetimage:'assets/eceersunar.png'),
              StoryCard(
                  name:TextConstants.mstturkkalesi,
                  assetimage:'assets/mstturkkalesi.png'),
              StoryCard(
                  name: TextConstants.yosoymert,
                  assetimage:'assets/yosoymert.png'),
              StoryCard(
                  name:TextConstants.yagizdo,
                  assetimage:'assets/yagizdo.png'),
              StoryCard(
                  name:TextConstants.rihanna,
                  assetimage:'assets/rihanna.png'),
              StoryCard(
                  name:TextConstants.jacobelordi,
                  assetimage:'assets/jacobelordi.png'),
              StoryCard(
                  name:TextConstants.zendaya,
                  assetimage:'assets/zendaya.png'),
              StoryCard(
                  name:TextConstants.americanstyle,
                  assetimage:'assets/americanstyle.png')
            ])
        ),
        Column(
          children: [
            SizedBox(height: 20),
            Posts(),
          ],
        )

      ],
    ),
  );
}




