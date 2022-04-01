import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/text_constants.dart';
import '../constants/color_constants.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex=0;

  static const TextStyle _style=
      TextStyle(fontSize: 30,fontWeight: FontWeight.bold);

  static const List<Widget> _widget=<Widget>[
    Text(TextConstants.home,style: _style),
    Text(TextConstants.search,style: _style),
    Text(TextConstants.reels,style: _style),
    Text(TextConstants.store,style: _style),
    Text(TextConstants.profile,style: _style),
  ];

    void _onTap(int index){
      setState(() {
        _selectedIndex=index;
      });
    }


  @override
  Widget build(BuildContext context) {
      Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorConstants.white,
      appBar: AppBar(
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
       body: Center(
        child: _widget.elementAt(_selectedIndex),
      ),
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
            icon: CircleAvatar(radius: 15,
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
        unselectedItemColor: ColorConstants.black87,
        onTap: _onTap,
        type: BottomNavigationBarType.fixed,
        elevation: 5,
      ),
    );
  }
}
