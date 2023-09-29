import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Video_page extends StatefulWidget {
  const Video_page({super.key});

  @override
  State<Video_page> createState() => _Video_pageState();
}

class _Video_pageState extends State<Video_page> {
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    videoPlayerController = VideoPlayerController.asset("lib/Assets/video/videos/RamSiyaRam-Adipurush-(PagalWorld.video).mp4")..initialize().then((value){
      setState(() {});
    });
    chewieController = ChewieController(videoPlayerController: videoPlayerController);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chewie(
          controller: chewieController,
        ),
      ),
    );
  }
}





// import 'package:chewie/chewie.dart';
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
//
// class Video_page extends StatefulWidget {
//
//   const Video_page({super.key});
//
//
//   @override
//   State<Video_page> createState() => _Video_pageState();
// }
//
// class _Video_pageState extends State<Video_page> {
//   late VideoPlayerController Myvideo;
//   late ChewieController Mychewiecontroller;
//
//   @override
//   void initState() {
//     super.initState();
//     Myvideo = VideoPlayerController.asset("lib/Assets/video/videos/I Think - Sajjan Adeeb_HD_720p-(PagalWorld.video).mp4")
//       ..initialize().then((value) => setState(() {}));
//     Mychewiecontroller = ChewieController(
//         videoPlayerController: Myvideo,
//         aspectRatio: 4 / 2,
//         autoPlay: false,
//         allowFullScreen: true);
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     Myvideo.dispose();
//     Mychewiecontroller.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//
//         leading: GestureDetector(
//             onTap: () {
//               Navigator.pop(context);
//             },
//             child: const Icon(
//               Icons.arrow_back,
//               color: Colors.white,
//             )),
//         centerTitle: true,
//         backgroundColor: Colors.black,
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           AspectRatio(
//             aspectRatio: 4 / 2,
//             child: Chewie(
//               controller: Mychewiecontroller,
//             ),
//           ),
//         ],
//       ),
//       backgroundColor: Colors.black,
//     );
//   }
// }
