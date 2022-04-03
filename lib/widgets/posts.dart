import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/text_constants.dart';

class Posts extends StatelessWidget {

  Posts({Key? key,
  required this.personProfilePhoto,
  required this.personName,
  required this.location,
  required this.personPost,
  required this.numberofLikes,
  required this.personalComment,
  required this.personalCommentIcon}) : super(key: key);


  String personProfilePhoto;
  String personName;
  String location;
  String personPost;
  String numberofLikes;
  String personalComment;
  String? personalCommentIcon;

  @override
  Widget build(BuildContext context) {

    const TextStyle _homeProfileStyle=
    TextStyle(fontSize: 18,fontWeight: FontWeight.w600);
    const TextStyle _placeorpartnership=
    TextStyle(fontSize: 14,fontWeight: FontWeight.normal);
    const TextStyle _personName=
    TextStyle(fontSize: 18,fontWeight: FontWeight.w600);
    const TextStyle _personComment=
    TextStyle(fontSize: 18,fontWeight: FontWeight.normal);
    const TextStyle _addComment=
    TextStyle(fontSize: 16,fontWeight: FontWeight.w300);

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Column(
            children: [
              Row(
                  children:[
                     Padding(
                      padding: EdgeInsets.only(left: 8,top: 2),
                      child: CircleAvatar(radius: 22,
                        backgroundImage: AssetImage('assets/story_bg.png'),
                        child: CircleAvatar(radius: 20,
                          backgroundImage: AssetImage('assets/white_bg.png'),
                          child: CircleAvatar(
                              radius:18,
                              backgroundImage:AssetImage(personProfilePhoto)), //PROFİL FOTOSU
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: 6),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(personName,
                                  style: _homeProfileStyle),
                              SizedBox(height: 2),
                              Text(location,
                                  style:_placeorpartnership),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Expanded( child: Container()),
                    const Padding(
                      padding: EdgeInsets.only(right:10),
                      child: Icon(Icons.more_horiz),
                    ),
                  ]),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/2,
                    child: Image.asset(personPost)),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8,right: 4,top: 8),
                          child: Image.asset('assets/like.png',
                              width: 30),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8,right: 4,top: 8),
                          child: Image.asset('assets/comment.png',
                              width: 42),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8,right: 4,top: 8),
                          child: Image.asset('assets/direct_message.png',
                              width: 34),
                        ),
                      ]),
                  Padding(
                    padding: const EdgeInsets.only(left: 4,right: 8,top: 8),
                    child: Image.asset('assets/save-instagram.png',
                        width: 28),
                  )],
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.only(top: 4,left: 10),
                alignment: Alignment.centerLeft,
                  child: Text('$numberofLikes liked',style: _personName)),
              SizedBox(height: 5),
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.only(top: 4,left: 10),
                      alignment: Alignment.centerLeft,
                      child: Text('$personName',style: _personName),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:10,top: 4),
                    child: Row(
                      children: [
                        Text('$personalComment',style: _personComment),
                        Image.asset('$personalCommentIcon',width: 20,height: 20),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left:8,top: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                            backgroundImage:AssetImage(personProfilePhoto),
                            radius: 14),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(TextConstants.add_a_comment,style:_addComment),
                        ),
                      ],
                    ),
                   Padding(
                     padding: const EdgeInsets.only(left: 4,right: 8,top: 8),
                     child: Row(
                       children: [
                       Padding(
                         padding: const EdgeInsets.only(right: 8),
                         child: Image.asset('assets/comment_heart_icon.png',width: 16,height: 16),
                       ),
                       Padding(
                         padding:const EdgeInsets.only(right: 8),
                         child: Image.asset('assets/high_five_icon.png',width: 16,height: 16),
                       ),
                       Padding(
                         padding:const EdgeInsets.only(right: 8),
                         child: Image.asset('assets/plus_circle_icon.png',width: 16,height: 16),
                       ),
                     ],
                     ),
                   ),


                  ],
                ),


              ),
              SizedBox(height: 10)
            ],
          )],
      ),
    );
  }
}
