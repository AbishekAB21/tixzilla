import 'package:flutter/material.dart';
import 'package:tixzilla/utils/themes/themes.dart';

class MovieDetailsComponent extends StatelessWidget {
  const MovieDetailsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.background,
      appBar: AppBar(
        backgroundColor: appcolor.background,
      ),
      body: SingleChildScrollView(child: Column(
        children: [
          // Add video player

          // Add IMDB ratings container 

          // Add book tickets button
        ],
      )),
    );
  }
}
