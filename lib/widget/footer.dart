import 'package:budor/widget/socialMediaIcon.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      height: 300,
      width: width,
      color: Color(0xFF2B3B7C),
      child: Padding(
        padding: const EdgeInsets.only(top: 8, left: 36, right: 36),
        child: Column(
            textDirection: TextDirection.rtl,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/h.png',
                        height: 100,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            for (int i = 0; i < kSocialIcons.length; i++)
                              SocialMediaIconBtn(
                                icon: kSocialIcons[i],
                                height: height * 0.035,
                                horizontalPadding: width * 0.005,
                              ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Text(
                          "info@tamracapital.sa",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/twhite.png',
                    height: 80,
                  ),
                ],
              ),
              Column(
                textDirection: TextDirection.rtl,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "تمرة المالية شركة مساهمة مقفلة برأس مال 3,200,000 ريال سعودي، مدفوع بالكامل، بسجل تجاري رقم 4030414862، تخضع لرقابة هيئة السوق المالية في",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.w100),
                  ),
                  Text(
                    "المملكة العربية السعودية برخصة رقم 20212 – 30 لخدمات المشورة المالية بتاريخ 26 أغسطس 2020 م ورخصة إدارة الاستثمار بتاريخ 14 يناير 2021 م. حصلت",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.w100),
                  ),
                  Text(
                    "تمرة المالية على موافقة هيئة السوق المالية في تاريخ 23 نوفمبر عام 2021 م، للبدء بممارسة الأعمال. العنوان: 7051 مبنى زهران للأعمال، حي",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.w100),
                  ),
                  Text(
                    "السلامة، جدة 23525 المملكة العربية السعودية.",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.w100),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
