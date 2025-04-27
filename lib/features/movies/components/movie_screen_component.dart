import 'package:flutter/material.dart';
import 'package:tixzilla/utils/fontstyles/fontstyles.dart';
import 'package:tixzilla/utils/themes/themes.dart';

class MovieScreenComponent extends StatelessWidget {
  const MovieScreenComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.background,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Scrollable widget (Horizontal with that animation, potruting)
              Material(
                elevation: 3,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                shadowColor: appcolor.teritiaryColor,
                child: Container(
                  height: 450,
                  width: 300,
                  decoration: BoxDecoration(
                    color: appcolor.teritiaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                      image: AssetImage("assets/images/SpiderMan.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              // Refractor the font style
              // put the text in a container and add overflow
              Column(
                children: [
                  Text(
                    "Spider-man into the spiderverse",
                    style: Fontstyles.bebasNeue25px(context),
                  ),
                  // add a ratings star system
                ],
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 35,
        backgroundColor: appcolor.background,
        title: Image.asset("assets/images/app_logo.png", height: 35),
        centerTitle: true,
      ),
    );
  }
}
