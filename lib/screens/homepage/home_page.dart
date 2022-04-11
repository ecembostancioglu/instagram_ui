import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/text_constants.dart';
import 'package:instagram_ui/screens/profilepage/my_profile.dart';
import 'package:instagram_ui/screens/reelspage/reels_page.dart';
import 'package:instagram_ui/screens/searchpage/search_page.dart';
import 'package:instagram_ui/screens/shoppage/shop_page.dart';
import '../../constants/color_constants.dart';
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
    const StoryProfile(),
    SearchPage(),
    ReelsPage(),
    ShopPage(),
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
        items: const <BottomNavigationBarItem>[
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
              backgroundImage:AssetImage('assets/myprofile.png')),
            backgroundColor: Colors.black,
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
