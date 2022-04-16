import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_ui/constants/color_constants.dart';
import 'package:instagram_ui/constants/text_constants.dart';
import 'package:video_player/video_player.dart';
import '../../model/reels_videos.dart';


class ReelsPage extends StatelessWidget {
  ReelsPage({Key? key}) : super(key: key);

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
   PostContent({Key? key}) : super(key: key);

  final double _iconHeight=28;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
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
              Text('1.1M',
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
              Text('558',
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
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/jacobelordi.png'))
                  ),
                ),
              ),
              const SizedBox(height:10)
            ],
          ),
         )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
        //      color: Colors.green,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                          radius:20,
                          backgroundImage:AssetImage('assets/jacobelordi.png')),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          TextConstants.jacobelordi,
                          style: TextStyle(
                        fontSize: 16
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: ElevatedButton(
                            onPressed: (){},
                            style: ButtonStyle(
                                shape:MaterialStateProperty.resolveWith((states){
                              return RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5));
                            } ),
                              backgroundColor: MaterialStateProperty.all(ColorConstants.transparent)
                            ),
                            child:Text(
                              TextConstants.follow,style: TextStyle(
                              color: ColorConstants.white
                            ),) ),
                      )

                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
