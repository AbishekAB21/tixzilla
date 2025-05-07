import 'package:flutter/material.dart';
import 'package:tixzilla/features/movie_details/widgets/cast_section_widget.dart';
import 'package:tixzilla/features/movie_details/widgets/movie_format_language_widget.dart';

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
        title: Text("Interstellar", style: Fontstyles.inter600w20px(context)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.share_rounded)),
        ],
        centerTitle: false,
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

              SizedBox(height: 10),

              // Movie details
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Movie Format and Language section
                    MovieLanguageAndFormatWidget(
                      movieFormat: "3D, 4D, IMAX",
                      movieGenre: "Sci-fi, Thriller",
                      movieLanguage: "English, Hindi",
                    ),

                    SizedBox(height: 10),

                    // Desc
                    Text(
                      "About the movie",
                      style: Fontstyles.inter600w(context),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Interstellar is a science fiction epic that depicts a future Earth on the brink of collapse due to famine and environmental disasters. A group of astronauts, led by former NASA pilot Cooper (Matthew McConaughey), undertakes a daring mission to find a new habitable planet by traveling through a wormhole near Saturn, in search of a new home for humanity. The film explores themes of time, space, love, and the human spirit's resilience in the face of adversity.",
                      style: Fontstyles.inter600wverySmall(context),
                      textAlign: TextAlign.justify,
                    ),

                    SizedBox(height: 10),

                    // Cast
                    Text("Cast and Crew", style: Fontstyles.inter600w(context)),
                    SizedBox(height: 10),
                    CastSectionWidget(
                      imageUrl: "assets/images/test_cast.jpeg",
                      name: "Matthew McConaughey",
                    ),
                  ],
                ),
              ),
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
