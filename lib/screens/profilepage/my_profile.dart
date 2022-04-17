import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_ui/constants/color_constants.dart';
import 'package:instagram_ui/constants/text_constants.dart';
import 'package:instagram_ui/model/story_highlights.dart';

import '../../widgets/profile_page/my_photo.dart';
import '../../widgets/profile_page/my_profile_buttons.dart';
import '../../widgets/profile_page/my_tags.dart';
import '../../widgets/posts/my_profile_posts.dart';

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
              color: ColorConstants.black,
              fontWeight: FontWeight.w600,
            )),
            actions: [
              IconButton(onPressed: (){},
                icon:SvgPicture.asset(
                    'assets/add.svg',
                    color: ColorConstants.black,
                    height: 28),),
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
            MyPhoto(),
            Padding(
              padding: EdgeInsets.only(top:10),
              child: Text(TextConstants.ecembostancioglu1,
              style: TextStyle(fontSize: 16),),
            ),
            MyProfileButtons(),
            Padding(
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
        )
          ],
        ),
      ),
    );
  }
}





