import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/color_constants.dart';


class SearchPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: ColorConstants.white,
       elevation: 1,
       title: Container(
         decoration: BoxDecoration(
           color: ColorConstants.grey_200,
           border: Border.all(
             color: ColorConstants.grey_200),
           borderRadius: const BorderRadius.all(
               Radius.circular(10))),
         child: CupertinoSearchTextField(
           decoration: BoxDecoration(
             color: ColorConstants.grey_200,
             borderRadius: const BorderRadius.all(
                  Radius.circular(10))
           ),
         ),
       ),
     ),
    );
  }

}
