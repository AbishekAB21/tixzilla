import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:tixzilla/utils/themes/themes.dart';
import 'package:tixzilla/utils/fontstyles/fontstyles.dart';
import 'package:tixzilla/widgets/common/fade_page_transition.dart';
import 'package:tixzilla/features/movies/widgets/poster_widget.dart';
import 'package:tixzilla/features/movies/core/providers/movie_screen_provider.dart';
import 'package:tixzilla/features/movie_details/containers/movie_details_container.dart';

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
            {
        "title": "Tangled",
        "rating": 4.5,
        "review": "Enchanting!",
        "poster": "assets/images/tangled (2010).jpeg",
      },
    ];

    return Scaffold(
      backgroundColor: appcolor.background,
      // AppBar
      appBar: AppBar(
        toolbarHeight: 35,
        backgroundColor: appcolor.background,
        title: Image.asset("assets/images/tixzilla_logo.png", height: 35),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
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
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  CustomFadeTransition(
                                    route: MovieDetailsContainer(),
                                  ),
                                );
                              },
                              child: PosterWidget(
                                posterPath: movie["poster"] as String,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
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
                  itemPadding: EdgeInsets.symmetric(horizontal: 2),
                  itemBuilder:
                      (context, index) => Image.asset("assets/images/star.png"),
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
      ),
    );
  }
}
