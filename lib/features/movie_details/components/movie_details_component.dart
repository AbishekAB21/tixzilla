import 'package:flutter/material.dart';

import 'package:tixzilla/utils/themes/themes.dart';
import 'package:tixzilla/widgets/common/video_player.dart';
import 'package:tixzilla/utils/fontstyles/fontstyles.dart';
import 'package:tixzilla/widgets/common/custom_button.dart';
import 'package:tixzilla/features/movie_details/widgets/imdb_section.dart';

class MovieDetailsComponent extends StatelessWidget {
  const MovieDetailsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.background,
      appBar: AppBar(
        backgroundColor: appcolor.background,
        iconTheme: IconThemeData(color: appcolor.iconColor),
        title: Text("Interstellar", style: Fontstyles.bebasNeue25px(context)),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              // video player
              VideoPlayerWidget(
                videoUrl: 'assets/videos/test.mp4',
                thumbnailUrl: 'assets/images/test_thumbnail1.jpeg',
              ),

              SizedBox(height: 10),

              // IMDB ratings section
              IMDBSection(ratings: "5"),
            ],
          ),
        ),
      ),

      bottomNavigationBar: SafeArea(
        child: BottomAppBar(
          color: appcolor.background,
          height: 75,
          child: CustomButton(text: "Book tickets", onTap: () {}),
        ),
      ),
    );
  }
}
