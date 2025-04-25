import 'package:flutter/material.dart';
import 'package:tixzilla/features/home/components/home_screen_component.dart';
import 'package:tixzilla/features/home/containers/home_screen_container.dart';
import 'package:tixzilla/utils/themes/themes.dart';
import 'package:tixzilla/widgets/common/fade_page_transition.dart';

class SplashScreenComponent extends StatefulWidget {
  const SplashScreenComponent({super.key});

  @override
  State<SplashScreenComponent> createState() => _SplashScreenComponentState();
}

class _SplashScreenComponentState extends State<SplashScreenComponent> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async{
      await Future.delayed(Duration(seconds: 2));
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        CustomFadeTransition(route: HomeScreenContainer()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Logo
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        decoration: BoxDecoration(
          color: appcolor.background
        ),

        child: Center(
          child: Image.asset("assets/images/app_logo.png", height: 85),
        ),
      ),
    );
  }
}
