import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/text_constants.dart';
import 'package:instagram_ui/screens/my_profile.dart';
import '../constants/color_constants.dart';
import 'story_profile.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex=0;

  static const TextStyle _style=
      TextStyle(fontSize: 30,fontWeight: FontWeight.bold);

  static final List<Widget> _widget=<Widget>[
    StoryProfile(),
    const Text(TextConstants.search,style: _style),
    const Text(TextConstants.reels,style: _style),
    const Text(TextConstants.store,style: _style),
    MyProfilePage(),
  ];

    void _onTap(int index){
      setState(() {
        _selectedIndex=index;
      });
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: ColorConstants.white,
       body: _widget.elementAt(_selectedIndex),
       bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: TextConstants.home,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
            label: TextConstants.search,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.ondemand_video),
            label: TextConstants.reels,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
            label: TextConstants.store,
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
                radius: 15,
            backgroundColor: ColorConstants.white,
            backgroundImage:AssetImage('assets/profile.png')),
              activeIcon:CircleAvatar(radius: 18,
                  backgroundColor: ColorConstants.black,
                  child: CircleAvatar(radius: 17,
                      backgroundColor:ColorConstants.white)),
            label: TextConstants.profile,
          ),
        ],
        iconSize: 30,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: ColorConstants.black,
        backgroundColor: ColorConstants.white,
        unselectedItemColor: ColorConstants.black45,
        onTap: _onTap,
        type: BottomNavigationBarType.fixed,
        elevation: 5,
      ),
    );
  }
}
