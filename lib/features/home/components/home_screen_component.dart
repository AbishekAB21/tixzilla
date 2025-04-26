import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:tixzilla/features/home/components/bottom_navbar_component.dart';
import 'package:tixzilla/features/movies/containers/movie_screen_container.dart';
import 'package:tixzilla/features/search/containers/search_screen_container.dart';
import 'package:tixzilla/features/home/core/providers/bottom_nav_bar_provider.dart';
import 'package:tixzilla/features/profile/containers/profile_screen_container.dart';
import 'package:tixzilla/features/my%20bookings/containers/my_bookings_container.dart';

class HomeScreenComponent extends ConsumerWidget {
  const HomeScreenComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(bottomIndexProvider);

    final screens = [
      const MovieScreenContainer(),
      const SearchScreenContainer(),
      const MyBookingsContainer(),
      const ProfileScreenContainer(),
    ];
    return Scaffold(
      bottomNavigationBar: BottomNavbarComponent(),
      body: screens[currentIndex],
    );
  }
}