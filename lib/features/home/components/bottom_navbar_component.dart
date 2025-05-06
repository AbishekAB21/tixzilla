import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'package:tixzilla/utils/themes/themes.dart';
import 'package:tixzilla/features/home/core/providers/bottom_nav_bar_provider.dart';

class BottomNavbarComponent extends ConsumerWidget {
  const BottomNavbarComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(bottomIndexProvider);

    return Container(
      
      decoration: BoxDecoration(
        color: appcolor.background,
        boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.black.withValues(alpha: 0.2)),
        ],
      ),

      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: GNav(
          backgroundColor: appcolor.background,
          color: appcolor.teritiaryColor,
          duration: Duration(milliseconds: 300),
          textStyle: TextStyle(
            color: appcolor.iconColor,
            fontWeight: FontWeight.w600,
            fontFamily: 'Inter',
          ),
          curve: Curves.easeIn,
          tabBackgroundGradient: LinearGradient(
            colors: [appcolor.secondaryGradient1, appcolor.secondaryGradient2],
          ),
          padding: EdgeInsets.all(10),
          gap: 8,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          selectedIndex: currentIndex,
          onTabChange: (index) {
            ref.read(bottomIndexProvider.notifier).update((state) => index);
          },
          tabs: [
            GButton(
              icon: Icons.movie,
              text: "Movies",
              iconActiveColor: appcolor.iconColor,
            ),
            GButton(
              icon: Icons.search,
              text: "Search",
              iconActiveColor: appcolor.iconColor,
            ),
            GButton(
              icon: Icons.local_movies_rounded,
              text: "My Bookings",
              iconActiveColor: appcolor.iconColor,
            ),
            GButton(
              icon: Icons.person_rounded,
              iconActiveColor: appcolor.iconColor,
              text: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
