
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

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