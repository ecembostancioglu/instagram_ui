import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/color_constants.dart';
import 'package:instagram_ui/constants/text_constants.dart';
import 'package:video_player/video_player.dart';

import '../../model/reels_videos.dart';


class ReelsPage extends StatelessWidget {
  ReelsPage({Key? key}) : super(key: key);

  final List<Map> reelItems = [
    { 'video': 'assets/videos/video.mp4'},
    { 'video': 'assets/videos/video.mov'},
    { 'video': 'assets/videos/video2.mov'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: ColorConstants.transparent,
        elevation: 0,
        title: Text(
          TextConstants.reels,
          style: TextStyle(
            color: ColorConstants.white,
          fontSize: 26,
          fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: (){}, icon: Icon(Icons.camera_alt_outlined,
          color: ColorConstants.white,
          size: 28))
        ],
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Container(
              height: MediaQuery.of(context).size.height,
              width:MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  VideoWidget(
                    videoUrl:reelVideos[index].videos
              ),
                  PostContent()
                ])
            );
          }
          )
    );

  }
}

class VideoWidget extends StatefulWidget {
  const VideoWidget({Key? key,required this.videoUrl}) : super(key: key);
  final String videoUrl;
  @override
  State<VideoWidget> createState() => _VideoWidgetState(this.videoUrl);
}

class _VideoWidgetState extends State<VideoWidget> {

  VideoPlayerController? _videoPlayerController;
 final String videoUrl;
  _VideoWidgetState(this.videoUrl);

  @override
  void initState() {
    super.initState();
   _videoPlayerController=VideoPlayerController.asset(videoUrl)
    ..initialize().then((value){
      _videoPlayerController!.play();
      setState(() {

      });
    });
  }


  
  @override
  Widget build(BuildContext context) {
    return VideoPlayer(_videoPlayerController!);

  }
}


class PostContent extends StatelessWidget {
  const PostContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
        ),
        Expanded(
            child: Row(
          children: [
            Expanded(
                child: Container()),
             Container(
              width: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                    Container(
                      height: 50,
                      child: Icon(
                          Icons.favorite_border,
                          size: 32,
                          color: ColorConstants.white),
                    ),
                  Text('1.1M',style: TextStyle(
                      color: ColorConstants.white,
                      fontSize: 14,
                  fontWeight: FontWeight.w700)),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 50,
                      child: Icon(
                          Icons.comment,
                          size: 32,
                          color: ColorConstants.white),
                    ),
                  ),
                  Text('558',
                      style: TextStyle(
                          color: ColorConstants.white,
                          fontSize: 14,
                      fontWeight: FontWeight.w700)),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 50,
                      child: Icon(
                          Icons.send,
                          size: 32,
                          color: ColorConstants.white),
                    ),
                  ),
                  Container(
                    height: 50,
                    child: Icon(
                        Icons.more_horiz_outlined,
                        size: 32,
                        color: ColorConstants.white),
                  ),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: ColorConstants.white,
                          width: 2),
                      borderRadius: BorderRadius.all(
                          Radius.circular(20)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/jacobelordi.png'))
                    ),
                  ),
                  SizedBox(height:10)
                ],
              ),
            )
          ],
        ))
      ],
    );
  }
}
