import 'package:flutter/material.dart';
import '../../constants/text_constants.dart';
import '../../widgets/posts/home_posts.dart';
import '../../widgets/story/my_story_card.dart';
import '../../widgets/story/story_card.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
    );
  }
}
