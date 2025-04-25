import 'package:flutter/material.dart';
import 'package:tixzilla/utils/themes/themes.dart';

class SplashScreenComponent extends StatefulWidget {
  const SplashScreenComponent({super.key});

  @override
  State<SplashScreenComponent> createState() => _SplashScreenComponentState();
}

class _SplashScreenComponentState extends State<SplashScreenComponent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Logo
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [appcolor.secondaryGradient1, appcolor.secondaryGradient2],
          ),
        ),

        child: Center(
          child: Image.asset("assets/images/app_logo.png", height: 85),
        ),
      ),
    );
  }
}
