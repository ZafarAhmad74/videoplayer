import 'package:flutter/material.dart';
import 'package:videoplayerchewie_app/chewie_list_item.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(
    MaterialApp(
    home: MyVideoPlayer(),
    ),
  );
}

class MyVideoPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Video Player'),
      ),
      body: ListView(
        children: <Widget>[
          // ChewieListItem(
          //   videoPlayerController: VideoPlayerController.asset('videos/bee.mp4'),
          //   looping: true,
          // ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network('https://ia600701.us.archive.org/26/items/SampleVideo1280x7205mb/SampleVideo_1280x720_5mb.mp4'),
            //http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4
            looping: true,
          ),
        ],
      ),
    );
  }
}
