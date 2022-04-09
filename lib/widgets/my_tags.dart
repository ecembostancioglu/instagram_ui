import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/text_constants.dart';

class MyTags extends StatelessWidget {
  const MyTags({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size=MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/tag1.png',
          height:size.height*0.18,
        width: size.width*0.18),
        const Text(TextConstants.tag_1,
          style: TextStyle(
              fontWeight: FontWeight.bold,
          fontSize: 26)),
        const Padding(
          padding: EdgeInsets.only(right: 20,left:20),
          child: Text(
              TextConstants.tag_2,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 18)),
        ),

      ],
    );
  }
}
