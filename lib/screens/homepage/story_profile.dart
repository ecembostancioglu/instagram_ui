import 'package:flutter/material.dart';
import 'package:instagram_ui/widgets/posts/home_posts.dart';
import 'package:instagram_ui/widgets/story/my_story_card.dart';
import 'package:instagram_ui/widgets/story/story_card.dart';
import '../../constants/color_constants.dart';
import '../../constants/text_constants.dart';


class StoryProfile extends StatelessWidget {
  const StoryProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size=MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Container(
          decoration: BoxDecoration(
            border:Border(
              bottom: BorderSide(
                  color:ColorConstants.white
              ),
            ),
          ),
          child: AppBar(
            elevation: 0,
            backgroundColor: ColorConstants.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8,top: 8),
                      child: Image.asset('assets/instagram.png',
                          fit: BoxFit.cover,
                          height: size.height*0.06),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8,top: 8),
                  child: Row(
                    children: [
                      Image.asset('assets/plus.png',fit: BoxFit.cover,
                          height: size.height*0.03),
                      SizedBox(width: size.width*0.05),
                      Image.asset('assets/like.png',fit: BoxFit.cover,
                          height: size.height*0.03),
                      SizedBox(width: size.width*0.05),
                      Image.asset('assets/dm.png',fit: BoxFit.cover,
                          height: size.height*0.03),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
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
                Posts(
                  personProfilePhoto:'assets/gag.png',
                  personName: TextConstants.gag,
                  location: TextConstants.somewhereonearth,
                  personPost: 'assets/dart.png',
                  numberofLikes: '7852',
                  personalComment:TextConstants.having_Fun_Dash,
                  personalCommentIcon: 'assets/blue_heart.png',
                  timeText:TextConstants.timeText1,
                ),
                Posts(
                    personProfilePhoto: 'assets/myprofile.png',
                    personName: TextConstants.ecembostancioglu,
                    location: TextConstants.izmir,
                    personPost: 'assets/myprofile.png',
                    numberofLikes: '824',
                    personalComment:'Summer Sunset ',
                    personalCommentIcon:'assets/sun_icon.png',
                    timeText:TextConstants.timeText2),
                Posts(
                    personProfilePhoto: 'assets/mstturkkalesi.png',
                    personName: TextConstants.mstturkkalesi,
                    location: TextConstants.keysighttech,
                    personPost: 'assets/mst_post.png',
                    numberofLikes: '462',
                    personalComment: TextConstants.keysight,
                    personalCommentIcon: 'assets/high_voltage_icon.png',
                    timeText: TextConstants.timeText3),
                Posts(
                    personProfilePhoto: 'assets/eceersunar.png',
                    personName: TextConstants.eceersunar,
                    location: TextConstants.alacati,
                    personPost: 'assets/eceersunar.png',
                    numberofLikes: '546',
                    personalComment: TextConstants.eceComment,
                    personalCommentIcon: 'assets/comment_heart_icon.png',
                    timeText: TextConstants.timeText4),
                Posts(
                    personProfilePhoto: 'assets/yagizdo.png',
                    personName: TextConstants.yagizdo,
                    location: TextConstants.istanbul,
                    personPost:'assets/yagizdo.png' ,
                    numberofLikes: '346',
                    personalComment: 'Flutter Dev',
                    personalCommentIcon: 'assets/laptop_icon.png',
                    timeText: TextConstants.timeText5)
              ],

            )

          ],
        ),
      ),
    );
  }
}


