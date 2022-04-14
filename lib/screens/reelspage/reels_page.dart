import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/color_constants.dart';
import 'package:instagram_ui/constants/text_constants.dart';
import 'package:video_player/video_player.dart';


class ReelsPage extends StatelessWidget {
  ReelsPage({Key? key}) : super(key: key);

  final List<Map> reelItems = [
    { 'video': 'assets/videos/sss.mp4'},
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
            return Container(child: VideoWidget(
              controller: VideoPlayerController.asset('assets/sss.mp4'),
              autoPlay: true,
              looping: true,
            ),
            );
          }));

  }
}

class VideoWidget extends StatefulWidget {
  const VideoWidget({Key? key,
  required this.controller,
  required this.autoPlay,
  required this.looping}) : super(key: key);

  final VideoPlayerController controller;
  final bool looping;
  final bool autoPlay;



  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {

  ChewieController? _chewieController;

  @override
  void initState() {
    super.initState();
  _chewieController=ChewieController(
    videoPlayerController: widget.controller,
    aspectRatio: 5/8,
    autoInitialize: true,
    looping: widget.looping,
    errorBuilder: (context,errorMessage){
      return Center(
        child: Text(errorMessage,style: TextStyle(color: ColorConstants.black),)
      );
    }
  );
  }

  @override
  void dispose() {
    super.dispose();
    _chewieController!.dispose();
  }


  
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(8),
    child: Chewie(
      controller: _chewieController!,
    ));
  }
}
