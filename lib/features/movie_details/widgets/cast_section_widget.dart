import 'package:flutter/material.dart';

import 'package:tixzilla/utils/themes/themes.dart';
import 'package:tixzilla/utils/fontstyles/fontstyles.dart';

class CastSectionWidget extends StatelessWidget {
  final String name;
  final String imageUrl;
  const CastSectionWidget({
    super.key,
    required this.imageUrl,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: appcolor.textfieldBackground,
                  backgroundImage: AssetImage(imageUrl),
                  radius: 45,
                ),
                SizedBox(
                  width: 80,
                  child: Text(
                    name,
                    style: Fontstyles.inter600wIncrediblySmall(context),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
