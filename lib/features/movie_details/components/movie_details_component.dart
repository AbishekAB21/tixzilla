import 'package:flutter/material.dart';

import 'package:tixzilla/utils/themes/themes.dart';
import 'package:tixzilla/widgets/common/video_player.dart';

class MovieDetailsComponent extends StatelessWidget {
  const MovieDetailsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.background,
      appBar: AppBar(
        backgroundColor: appcolor.background,
        iconTheme: IconThemeData(color: appcolor.iconColor),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // video player
            VideoPlayerWidget(
              videoUrl: 'assets/videos/test.mp4',
              thumbnailUrl: 'assets/images/test_thumbnail1.jpeg',
            ),

            // Add IMDB ratings container

            // Add book tickets button
          ],
        ),
      ),
    );
  }
}
