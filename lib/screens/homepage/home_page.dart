import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_ui/constants/text_constants.dart';
import 'package:instagram_ui/screens/profilepage/my_profile.dart';
import 'package:instagram_ui/screens/reelspage/reels_page.dart';
import 'package:instagram_ui/screens/searchpage/search_page.dart';
import 'package:instagram_ui/screens/shoppage/shop_page.dart';
import '../../constants/color_constants.dart';
import 'story_profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex=0;



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
        items:  <BottomNavigationBarItem>[
           BottomNavigationBarItem(
            icon:SvgPicture.asset(
                'assets/home.svg',
                height: 24),
            label: TextConstants.home,
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                  'assets/search.svg',
              height: 24),
            label: TextConstants.search,
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                  'assets/reels.svg',
                  height: 24),
            label: TextConstants.reels,
          ),
          BottomNavigationBarItem(
              icon:SvgPicture.asset(
                  'assets/shop.svg',
                  height: 24),
            label: TextConstants.store,
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 12,
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
