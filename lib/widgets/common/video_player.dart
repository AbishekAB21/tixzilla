import 'package:flutter/material.dart';
import 'package:tixzilla/features/movie_details/widgets/full_screen_video_widget.dart';
import 'package:tixzilla/utils/themes/themes.dart';

class VideoPlayerWidget extends StatelessWidget {
  final String videoUrl;
  final String thumbnailUrl;
  const VideoPlayerWidget({super.key, required this.videoUrl, required this.thumbnailUrl});

  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (_) =>  FullscreenVideoPlayer(
                          videoUrl:
                             videoUrl,
                        ),
                  ),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // TODO : Change to network once firebase is installed
                    Image.asset(
                      thumbnailUrl,
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      width: double.infinity,
                      height: 200,
                      color: Colors.black.withValues(alpha: 0.5),
                    ),
                    Icon(
                      Icons.play_circle_fill,
                      size: 64,
                      color: appcolor.teritiaryColor,
                    ),
                  ],
                ),
              ),
            );
  }
}