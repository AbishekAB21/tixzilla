import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:tixzilla/utils/themes/themes.dart';
import 'package:tixzilla/utils/fontstyles/fontstyles.dart';
import 'package:tixzilla/features/movies/widgets/poster_widget.dart';
import 'package:tixzilla/features/movies/core/providers/movie_screen_provider.dart';

class MovieScreenComponent extends ConsumerWidget {
  const MovieScreenComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PageController pageController = PageController(viewportFraction: 0.8);
    final currentPage = ref.watch(currentPageProvider);

    // Dummy Movie Data
    final List<Map<String, dynamic>> movies = [
      {
        "title": "Spider-Man Into the Spider-Verse",
        "rating": 4.5,
        "review": "A Masterpiece!",
        "poster": "assets/images/SpiderMan.jpeg",
      },
      {
        "title": "The Dark Knight",
        "rating": 5.0,
        "review": "Legendary!",
        "poster": "assets/images/Dark_Knight.jpeg",
      },
      {
        "title": "Interstellar",
        "rating": 5.0,
        "review": "Greatest of all time!!",
        "poster": "assets/images/Interstellar.jpeg",
      },
      {
        "title": "Oppenheimer",
        "rating": 4.5,
        "review": "Sensational!",
        "poster": "assets/images/Oppenheimer.jpeg",
      },
    ];

    return Scaffold(
      backgroundColor: appcolor.background,
      // AppBar
      appBar: AppBar(
        toolbarHeight: 35,
        backgroundColor: appcolor.background,
        title: Image.asset("assets/images/app_logo.png", height: 35),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 550,
                child: PageView.builder(
                  controller: pageController,
                  onPageChanged: (index) {
                    ref.read(currentPageProvider.notifier).state = index;
                  },
                  itemCount: movies.length,
                  itemBuilder: (context, index) {
                    final movie = movies[index];
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Scrollable poster widget
                          PosterWidget(posterPath: movie["poster"] as String),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 30),
              Text(
                movies[currentPage]["title"] as String,
                style: Fontstyles.bebasNeue25px(context),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              // Ratings System
              RatingBar.builder(
                initialRating: movies[currentPage]["rating"] as double,
                itemCount: 5,
                allowHalfRating: true,
                unratedColor: appcolor.iconColor,
                itemSize: 25.0,
                ignoreGestures: true,
                itemBuilder:
                    (context, index) =>
                        Icon(Icons.star, color: appcolor.secondaryGradient1),
                onRatingUpdate: (value) {},
              ),
              SizedBox(height: 10),
              // Review
              Text(
                movies[currentPage]["review"] as String,
                style: Fontstyles.inter600w(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
