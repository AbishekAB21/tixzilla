import 'package:flutter/material.dart';
import 'package:tixzilla/features/home/components/bottom_navbar_component.dart';

class HomeScreenComponent extends StatelessWidget {
  const HomeScreenComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavbarComponent(),
    );
  }
}