
import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/color_constants.dart';
import 'package:instagram_ui/constants/text_constants.dart';

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
          }, body: Column(
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
            )
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 18,bottom: 10),
            child: Stack(
                children:<Widget>[
                   CircleAvatar(
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
                        child: CircleAvatar(
                          radius: 12,
                          backgroundImage: AssetImage('assets/addstory.png'),
                        ),
                      ),
                  ),
                ]
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 18),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text(TextConstants.ecembostancioglu1),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:MaterialStateProperty.all(
                                ColorConstants.white)),
                          onPressed: (){},
                          child: Text(
                            TextConstants.editProfile,
                            style: TextStyle(color: ColorConstants.black),))
                    ]
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
