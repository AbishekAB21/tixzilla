import 'package:flutter/material.dart';

import 'package:tixzilla/utils/themes/themes.dart';
import 'package:tixzilla/utils/fontstyles/fontstyles.dart';

class MovieLanguageAndFormatWidget extends StatelessWidget {
  final String movieFormat;
   final String movieGenre;
  final String movieLanguage;
  const MovieLanguageAndFormatWidget({
    super.key,
    required this.movieFormat,
    required this.movieGenre,
    required this.movieLanguage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Format
        Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: appcolor.textfieldBackground.withValues(alpha: 0.56),
          ),
          child: Text(
            movieFormat,
            style: Fontstyles.inter600wverySmall(context),
          ),
        ),

        SizedBox(width: 5),

        // Genre
        Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: appcolor.textfieldBackground.withValues(alpha: 0.56),
          ),
          child: Text(
            movieGenre,
            style: Fontstyles.inter600wverySmall(context),
          ),
        ),

        SizedBox(width: 5),

        // Language
        Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: appcolor.textfieldBackground.withValues(alpha: 0.56),
          ),
          child: Text(
            movieLanguage,
            style: Fontstyles.inter600wverySmall(context),
          ),
        ),
      ],
    );
  }
}