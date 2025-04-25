import 'package:flutter/material.dart';
import 'package:tixzilla/features/splash/components/splash_screen_component.dart';

class SplashScreenContainer extends StatefulWidget {
  const SplashScreenContainer({super.key});

  @override
  State<SplashScreenContainer> createState() => _SplashScreenContainerState();
}

class _SplashScreenContainerState extends State<SplashScreenContainer> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenComponent();
  }
}