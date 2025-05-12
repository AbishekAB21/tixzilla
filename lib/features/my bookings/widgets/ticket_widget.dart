import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:ticket_widget/ticket_widget.dart';

import 'package:tixzilla/utils/themes/themes.dart';
import 'package:tixzilla/utils/fontstyles/fontstyles.dart';

class CustomTicketWidget extends StatelessWidget {
  const CustomTicketWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TicketWidget(
        color: appcolor.textfieldBackground,
        isCornerRounded: true,
        width: 450,
        height: 550,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      image: DecorationImage(
                        image: AssetImage("assets/images/test_thumbnail1.jpeg"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          appcolor.background.withValues(alpha: 0.2),
                          BlendMode.srcOver,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 100, // Height of the fading area
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            appcolor.background.withValues(alpha: 0.1),
                            appcolor.background.withValues(alpha: 0.3),
                            appcolor.background.withValues(alpha: 0.6),
                            appcolor.background.withValues(alpha: 0.8),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: appcolor.iconColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          child: Image.asset(
                            "assets/images/Interstellar.jpeg",
                            height: 80,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Interstellar",
                                style: Fontstyles.inter15pxBlack(context),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    "English",
                                    style: Fontstyles.inter600wverySmall(
                                      context,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "IMAX",
                                    style: Fontstyles.inter600wverySmall(
                                      context,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    DateFormat(
                                      'd EEE y',
                                    ).format(DateTime.now()),
                                    style: Fontstyles.inter600wverySmall(
                                      context,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "| ${DateFormat('hh:mm a').format(DateTime.now())}",
                                    style: Fontstyles.inter600wverySmall(
                                      context,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: appcolor.teritiaryColor.withValues(alpha: 0.3),
                      ),
                      child: Text(
                        "Cancelation : Available 20 minutes before showtime has passed",
                        textAlign: TextAlign.center,
                        style: Fontstyles.inter600wIncrediblySmall(context),
                      ),
                    ),
                    SizedBox(height: 20),

                    Image.asset("assets/images/barcode.png", height: 80),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
