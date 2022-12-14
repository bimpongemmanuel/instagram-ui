import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:video_player/video_player.dart';

class VideoItem extends StatefulWidget {
  final VideoPlayerController? videoPlayerController;
  final bool? looping;
  final bool? autoplay;
   VideoItem({
    this.videoPlayerController,
    this.looping,
    this.autoplay,
    Key? key}) : super(key: key);

  @override
  State<VideoItem> createState() => _VideoItemState();
}

class _VideoItemState extends State<VideoItem> {
  ChewieController? _chewieController;
  @override
  void initState() {
    super.initState();
    _chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController!,
      aspectRatio: 5/8,
      autoInitialize: true,
      autoPlay: widget.autoplay!,
      looping: widget.looping!,
      showControls: false,
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(errorMessage,style: TextStyle(color: Colors.white),),
        );
      },
      );
  }
  @override
  void dispose() {
    super.dispose();
    _chewieController!.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.all(8.0),
      child: Chewie(controller: _chewieController!),
    );
  }
}