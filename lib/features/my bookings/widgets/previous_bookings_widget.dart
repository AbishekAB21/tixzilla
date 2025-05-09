import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import 'package:tixzilla/utils/themes/themes.dart';
import 'package:tixzilla/utils/fontstyles/fontstyles.dart';

class PreviousBookingsTile extends StatelessWidget {
  const PreviousBookingsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(10.0),
      elevation: 3,
      color: Colors.transparent,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: appcolor.textfieldBackground.withValues(alpha: 0.8),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  child: Image.asset(
                    "assets/images/Oppenheimer.jpeg",
                    height: 80,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Oppenheimer",
                            style: Fontstyles.inter600w(context),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "English",
                            style: Fontstyles.inter600wverySmall(context),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "IMAX",
                            style: Fontstyles.inter600wverySmall(context),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            DateFormat('d EEE y').format(DateTime.now()),
                            style: Fontstyles.inter600wverySmall(context),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "| ${DateFormat('hh:mm a').format(DateTime.now())}",
                            style: Fontstyles.inter600wverySmall(context),
                          ),
                        ],
                      ),
                      Text(
                        "2 tickets : A1,A2",
                        style: Fontstyles.inter600wverySmall(context),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Divider(
              color: appcolor.teritiaryColor.withValues(alpha: 0.5),
              indent: 5,
              endIndent: 5,
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: appcolor.successColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "FINISHED",
                      style: Fontstyles.inter600wIncrediblySmallBold(context),
                    ),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    height: 40,
                    child: VerticalDivider(
                      color: appcolor.teritiaryColor.withValues(alpha: 0.5),
                      width: 1,
                      thickness: 1,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Hope you enjoyed the show!",
                    style: Fontstyles.inter600wverySmall(context),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
