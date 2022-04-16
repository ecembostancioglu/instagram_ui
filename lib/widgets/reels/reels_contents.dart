import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/color_constants.dart';
import '../../constants/text_constants.dart';

class ReelsContents extends StatelessWidget {
  const ReelsContents({Key? key,
  required this.favNumbers,
  required this.commentNumbers,
  required this.profileImage,
  required this.profileName,
  required this.profileComment,
  required this.music}) : super(key: key);

  final String favNumbers;
  final String commentNumbers;
  final String profileImage;
  final String profileName;
  final String profileComment;
  final String music;



  @override
  Widget build(BuildContext context) {

    final double _iconHeight=28;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 500,
                height: 110,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: CircleAvatar(
                            radius: 22,
                            backgroundColor: ColorConstants.white,
                            child: CircleAvatar(
                              radius: 21,
                              backgroundImage: AssetImage(profileImage),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 12),
                          child: Text(profileName,
                              style: TextStyle(
                                  color: ColorConstants.white,
                                  fontSize:16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child:OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                    color: ColorConstants.white,
                                    width: 0.8)),
                            onPressed: () {},
                            child: Text(TextConstants.follow,
                              style: TextStyle(
                                  color: ColorConstants.white,
                                  fontSize: 13),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5,left: 10),
                          child: Text(profileComment,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: ColorConstants.white)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5,left: 10),
                          child: Icon(Icons.music_note,
                              color: ColorConstants.white,size: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5,left: 10),
                          child: Text(music,
                              style: TextStyle(fontSize: 16,
                                  color: ColorConstants.white)),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 50,
                      child: SvgPicture.asset(
                          'assets/like.svg',
                          color: ColorConstants.white,
                          height: _iconHeight),
                    ),
                    Text(favNumbers,
                        style: TextStyle(
                            color: ColorConstants.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w700)),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 50,
                        child:SvgPicture.asset(
                            'assets/comment.svg',
                            color: ColorConstants.white,
                            height: _iconHeight),
                      ),
                    ),
                    Text(commentNumbers,
                        style: TextStyle(
                            color: ColorConstants.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w700)),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 50,
                        child: SvgPicture.asset(
                            'assets/share.svg',
                            color: ColorConstants.white,
                            height: _iconHeight),
                      ),
                    ),
                    Container(
                      height: 50,
                      child: Icon(
                          Icons.more_horiz_outlined,
                          size: 32,
                          color: ColorConstants.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: ColorConstants.white,
                                width: 2),
                            borderRadius: const BorderRadius.all(
                                Radius.circular(10)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(profileImage))
                        ),
                      ),
                    ),
                    const SizedBox(height:10)
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
