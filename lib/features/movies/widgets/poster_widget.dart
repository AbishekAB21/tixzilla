import 'package:flutter/material.dart';
import 'package:tixzilla/utils/themes/themes.dart';

class PosterWidget extends StatelessWidget {
  final String posterPath;
  const PosterWidget({super.key, required this.posterPath});

  @override
  Widget build(BuildContext context) {
    return Material(
                            elevation: 5,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            child: Container(
                              height: 450,
                              width: 300,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    appcolor.background,
                                    appcolor.background,
                                  ],
                                ),
                                color: appcolor.teritiaryColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                image: DecorationImage(
                                  image: AssetImage(posterPath),
                                  opacity: 0.8,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          );
  }
}