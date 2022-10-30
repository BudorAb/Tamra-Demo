import 'package:budor/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../animations/entranceFader.dart';

class HomeDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: 600,
      width: width,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(width * 0.1, height * 0.2, 0, 0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.04,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "استثمارك أسهل مع ",
                      style: GoogleFonts.montserrat(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                      children: const <TextSpan>[
                        TextSpan(
                            text: 'خبراتنا',
                            style: TextStyle(color: Color(0xFF69ACD9))),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 16,
                    ),
                    child: Text(
                        "نضع خبرات الاستثمار بين يديك لتأمين مستقبلك المالي بأذكى التقنيات\n وأبسط الخطوات للاستثمار في السوق المحلي والعالمي. ابدأ استثمارك\n اليوم مع خدمة المستشار الآلي لبناء محفظة استثمارية تناسب أهدافك \nالمالية بأقل تكلفة اشتراك.",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                          color: kPrimaryColor,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      child: MaterialButton(
                        color: Color(0xFFEFDA74),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(color: Color(0xFFEFDA74))),
                        onPressed: () {},
                        child: Text(
                          "سجل الآن",
                          style: GoogleFonts.montserrat(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
