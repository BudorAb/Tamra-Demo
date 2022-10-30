import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';
import '../../widget/serviceCard.dart';

class ServiceDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              text: "لماذا تبدأ",
              style: GoogleFonts.montserrat(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
              children: const <TextSpan>[
                TextSpan(
                    text: "بالإستثمار؟",
                    style: TextStyle(color: Color(0xFF69ACD9))),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: width < 1200
                      ? MainAxisAlignment.spaceEvenly
                      : MainAxisAlignment.center,
                  children: [
                    ServiceCard(
                      cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                      cardHeight: width < 1200 ? height * 0.4 : height * 0.35,
                      serviceIcon: kServicesIcons[0],
                      serviceTitle: kServicesTitles[0],
                      serviceDescription: kServicesDescriptions[0],
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    ServiceCard(
                      cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                      cardHeight: width < 1200 ? height * 0.4 : height * 0.35,
                      serviceIcon: kServicesIcons[1],
                      serviceTitle: kServicesTitles[1],
                      serviceDescription: kServicesDescriptions[1],
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    ServiceCard(
                      cardWidth: width < 1200 ? width * 0.3 : width * 0.22,
                      cardHeight: width < 1200 ? height * 0.4 : height * 0.35,
                      serviceIcon: kServicesIcons[2],
                      serviceTitle: kServicesTitles[2],
                      serviceDescription: kServicesDescriptions[2],
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.04,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
