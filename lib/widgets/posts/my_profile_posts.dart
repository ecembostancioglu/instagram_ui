import 'package:flutter/material.dart';
import '../../model/profile_card.dart';

class MyProfilePosts extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: photos.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
            crossAxisSpacing: 3,
            mainAxisSpacing: 4,
          childAspectRatio: 1
        ),
        itemBuilder: (context,index){
          return GridTile(
              child: Image.asset(photos[index].photo));
        });
  }


}
