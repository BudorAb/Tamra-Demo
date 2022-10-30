import 'package:budor/widget/aboutMeText.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class AboutDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      height: height,
      color: Color(0xFF1C254E),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "\nعن تمرة",
            textDirection: TextDirection.rtl,
            style: GoogleFonts.montserrat(
              color: Color(0xFF69ACD9),
              fontSize: height * 0.075,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/tm2.png',
                height: 400,
              ),
              Expanded(
                flex: 3,
                child: AboutMeText(
                  fontSize: width <= 1100 ? 14 : 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
