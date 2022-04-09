import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/color_constants.dart';
import 'package:instagram_ui/constants/text_constants.dart';
import 'package:instagram_ui/model/story_highlights.dart';

import '../widgets/my_tags.dart';
import '../widgets/posts/my_profile_posts.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            centerTitle: false,
            title: Text(TextConstants.profile_title,
            style: TextStyle(fontSize: 24,
              color: ColorConstants.black,fontWeight: FontWeight.w600,
            )),
            actions: [
              IconButton(onPressed: (){},
                icon: Icon(Icons.add_box_outlined,
                    size: 26,
                    color: ColorConstants.black)),
              IconButton(onPressed: (){},
                  icon: Icon(Icons.menu,
                    size: 26,
                    color: ColorConstants.black))],
          ),
        ),
      ),
      body:DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context,_){
            return [
              SliverList(
                  delegate: SliverChildListDelegate([
                    myProfileWidget(context)
                  ]))
            ];
          },
          body: Column(
          children: [
            Material(
              color: ColorConstants.white,
              child: TabBar(
                labelColor: ColorConstants.black,
                unselectedLabelColor: ColorConstants.grey_400,
                indicatorWeight: 1,
                indicatorColor: ColorConstants.black,
                tabs: [
                  Tab(
                      icon: Image.asset('assets/grid.png',
                          color: ColorConstants.black)),
                  Tab(
                    icon: Image.asset('assets/tag.png',
                    color: ColorConstants.black)),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  MyProfilePosts(),
                  MyTags(),
                ],
              ),
            ),

          ],
        ),
        ),
      ) ,
    );
  }

  myProfileWidget(BuildContext context) {

    return Container(
      width: double.infinity,
      color: ColorConstants.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 18,right: 18,bottom: 10,top: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                    children:<Widget>[
                       const CircleAvatar(
                        radius: 46,
                        backgroundImage:AssetImage('assets/story_bg.png'),
                        child: CircleAvatar(
                          radius: 44,
                          backgroundImage: AssetImage('assets/white_bg.png'),
                          child: CircleAvatar(
                            radius: 42,
                            backgroundImage: AssetImage('assets/myprofile.png'),
                          ),
                        ),
                      ),
                      Positioned(
                          right: 0,
                          bottom: 2,
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: ColorConstants.white,
                            child: const CircleAvatar(
                              radius: 12,
                              backgroundImage: AssetImage('assets/addstory.png'),
                            ),
                          ),
                      ),
                    ]
                ),
                Row(     //Profile post,followers,following
                  children: [
                    Column(
                      children: const [
                        Text(TextConstants.post_no,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                        Text(TextConstants.post,
                          style: TextStyle(fontSize: 16,
                            letterSpacing: 0.4),),
                        SizedBox(width: 80),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(TextConstants.followers_num,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                        Text(TextConstants.followers,
                          style: TextStyle(fontSize: 16,
                            letterSpacing: 0.4),),
                        SizedBox(width: 80),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(TextConstants.following_num,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                        Text(TextConstants.following,
                          style: TextStyle(fontSize: 16,
                            letterSpacing: 0.4),),
                        SizedBox(width: 80),
                      ],
                    ),

                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top:10),
              child: Text(TextConstants.ecembostancioglu1,
              style: TextStyle(fontSize: 16),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16,right: 5),
                    child:OutlinedButton(
                      style:ButtonStyle(
                        shape:MaterialStateProperty.resolveWith((_){
                          return RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5));
                        } ) ,
                          elevation:MaterialStateProperty.all(0),
                        backgroundColor:MaterialStateProperty.all(
                            ColorConstants.white)),
                       onPressed: (){},
                      child: Text(TextConstants.editProfile,
                        style: TextStyle(
                        fontSize: 16,
                            color: ColorConstants.black,
                        letterSpacing:0.4,
                      ),),
                    ) ,),
                ), //Edit Profile Button
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child:OutlinedButton(
                      style:ButtonStyle(
                          shape:MaterialStateProperty.resolveWith((_){
                            return RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5));
                          } ) ,
                          elevation:MaterialStateProperty.all(0),
                          backgroundColor:MaterialStateProperty.all(
                              ColorConstants.white)),
                      onPressed: (){},
                      child: Icon(Icons.person_add_alt,color: ColorConstants.black)
                    ) ,),
                ), //Add Person Button
              ],
            ),
            Padding(   //Story Highlights
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 90,
                child:ListView.builder(
                    itemCount: highlightsItem.length,
                    shrinkWrap: true,
                    scrollDirection:Axis.horizontal,
                    itemBuilder: (context,index){
                  return Row(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 29,
                            backgroundColor: ColorConstants.grey_200,
                            child: CircleAvatar(
                              radius: 27,
                              backgroundImage:const AssetImage('assets/white_bg.png'),
                              child: CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage(highlightsItem[index].thumbnail),
                              ),
                            ),
                          ),
                           Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(highlightsItem[index].title),
                          )
                        ],
                      ),
                      const SizedBox(width: 10)
                    ],
                  );
                })
              )
            ),
          ],
        ),
      ),
    );
  }
}
