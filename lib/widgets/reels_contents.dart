import 'package:flutter/material.dart';

import '../constants/color_constants.dart';

class ReelsContents extends StatelessWidget {
  const ReelsContents({Key? key,
  required this.text,
  required this.favIcon,
  required this.commentIcon,
  required this.sendIcon,
  required this.threeDotIcon,
  required this.profileImage}) : super(key: key);

  final String text;
  final IconData favIcon;
  final IconData commentIcon;
  final IconData sendIcon;
  final IconData threeDotIcon;
  final Image profileImage;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 80,
              child: Icon(favIcon,
                  size: 40,
                  color: ColorConstants.white),
            ),
            Container(
              height: 80,
              color: Colors.yellow,
            ),
            Container(
              height: 80,
              color: Colors.pink,
            ),
            Container(
              height: 80,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
