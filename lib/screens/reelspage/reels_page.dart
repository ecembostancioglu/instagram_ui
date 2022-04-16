import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/color_constants.dart';
import 'package:instagram_ui/constants/text_constants.dart';
import 'package:video_player/video_player.dart';
import '../../model/reels_videos.dart';
import '../../widgets/reels/reels_contents.dart';


class ReelsPage extends StatelessWidget {
  ReelsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final List<String> favNumber=[
      '1.1M',
      '977B',
      '659B',
      '12,7B',
      '208B',
    ];
    final List<String> commentNumber=[
      '6.220',
      '1.609',
      '38',
      '981',
      '4.321',
    ];

    final List<String> profileImages=[
      'assets/jacobelordi.png',
      'assets/gag.png',
      'assets/zendaya.png',
      'assets/rihanna.png',
      'assets/gag.png',
    ];
    final List<String> profileNames=[
      TextConstants.jacobelordi,
      TextConstants.gag,
      TextConstants.zendaya,
      TextConstants.rihanna,
      TextConstants.gag,

    ];

    final List<String> profileComments=[
      TextConstants.sunset,
      TextConstants.stars,
      TextConstants.snow,
      TextConstants.breakfast,
      TextConstants.road,

    ];

    final List<String> musics=[
      TextConstants.music1,
      TextConstants.music2,
      TextConstants.music3,
      TextConstants.music4,
      TextConstants.music5,

    ];
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
          itemCount: reelVideos.length,
          itemBuilder: (context, index) {
            return Container(
              height: MediaQuery.of(context).size.height,
              width:MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  VideoWidget(
                    videoUrl:reelVideos[index].videos
              ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ReelsContents(
                          favNumbers: favNumber[index],
                          commentNumbers: commentNumber[index],
                          profileImage:profileImages[index],
                          profileName: profileNames[index],
                          profileComment:profileComments[index],
                          music: musics[index]),
                    ],
                  )
                ])
            );
          }
          )
    );

  }
}

class VideoWidget extends StatefulWidget {
  const VideoWidget({
    Key? key,
    required this.videoUrl}) : super(key: key);

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



