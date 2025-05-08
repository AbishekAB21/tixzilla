import 'package:flutter/material.dart';
import 'package:tixzilla/features/profile/widgets/profile_tiles.dart';
import 'package:tixzilla/utils/fontstyles/fontstyles.dart';
import 'package:tixzilla/utils/themes/themes.dart';
import 'package:tixzilla/widgets/common/custom_button.dart';

class ProfileScreenComponent extends StatelessWidget {
  const ProfileScreenComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appcolor.background,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: appcolor.iconColor,
                  radius: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        "assets/images/test_cast.jpeg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),

                ProfileTileWidget(
                  title: "My Account",
                  subtitle: "abishekabofficial@gmail.com",
                  tileIcon: Icon(
                    Icons.security_rounded,
                    color: appcolor.iconColor,
                  ),
                ),

                SizedBox(height: 10.0),

                ProfileTileWidget(
                  title: "My Bookings",
                  subtitle: "1 Active booking",
                  tileIcon: Icon(
                    Icons.movie_rounded,
                    color: appcolor.iconColor,
                  ),
                ),

                SizedBox(height: 10.0),

                ProfileTileWidget(
                  title: "Help Center",
                  subtitle: "Need help or have questions?",
                  tileIcon: Icon(
                    Icons.headset_mic_rounded,
                    color: appcolor.iconColor,
                  ),
                ),

                SizedBox(height: 10.0),

                ProfileTileWidget(
                  title: "About",
                  subtitle: "What is tixzilla?",
                  tileIcon: Icon(Icons.help, color: appcolor.iconColor),
                ),
              ],
            ),
          ),
        ),

        bottomNavigationBar: BottomAppBar(
          color: appcolor.background,
          height: 70,
          child: CustomButton(text: "Delete Account", onTap: () {}),
        ),
      ),
    );
  }
}
