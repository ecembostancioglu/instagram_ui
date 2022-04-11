import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/text_constants.dart';
import '../../constants/color_constants.dart';
import '../../model/story_highlights.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size=MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
            TextConstants.reels,
            style: TextStyle(color: ColorConstants.black,
                fontSize: 26)),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(Icons.camera_alt_outlined,
                    size: 30,color: ColorConstants.black),
              )
            ],
          )
        ],
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
          itemCount: highlightsItem.length,
          itemBuilder: (_,index){
          return Container(
            height: size.height,
              decoration: BoxDecoration(
              image: DecorationImage(
              image: AssetImage(highlightsItem[index].thumbnail),
                fit: BoxFit.cover
            ),));
        }
        )
    );}
}
