import 'package:flutter/material.dart';

import '../../constants/color_constants.dart';
import '../../constants/text_constants.dart';

class MyProfileButtons extends StatelessWidget {
  const MyProfileButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}