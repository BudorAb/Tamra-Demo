import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMeText extends StatelessWidget {
  final TextAlign textAlign;
  final double fontSize;

  const AboutMeText({Key key, this.textAlign, this.fontSize}) : super(key: key);

  TextStyle _textStyle(double fSize, bool bold) {
    return GoogleFonts.montserrat(
      fontSize: fSize ?? 14,
      fontWeight: !bold ? FontWeight.w100 : FontWeight.w400,
      letterSpacing: 1.0,
      height: 2.0,
      color: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign ?? TextAlign.right,
      text: TextSpan(children: [
        TextSpan(
          text:
              "نحن شركة مرخصة من هيئة السوق المالية برخصة رقم 20212 – 30 لخدمات المشورة\n المالية بتاريخ 26 أغسطس 2020 م ورخصة إدارة الاستثمار بتاريخ 14 يناير 2021 م. نتيح\nللأفراد الدخول في صناديق الاستثمار المحلية والعالمية بخطوات سهلة عبر منصة آمنة\nبعمليات مؤتمتة تزيل الأعباء وتضمن الدّقة. نستثمر الأموال في صناديق المؤشرات\nالمتداولة المتوافقة مع الشريعة الإسلامية. في 23 نوفمبر عام 2021 م، حصلت تمرة\nالمالية على موافقة هيئة السوق المالية للبدء بممارسة الأعمال. بدأت تمرة ممارسة\nأعمالها بإطلاق منصتها الاستثمارية، بعد لمس إشكالية انحصار الاستثمار على فئة\nمعينة، فأردنا أن يكون متاحًا للجميع من خلال منصة متطورة تسهل العملية برفقة\nخبراء ماليين واجهوا مشاكل الاستثمار المعقدة.",
          style: MediaQuery.of(context).size.width < 600
              ? _textStyle(fontSize, false)
              : _textStyle(fontSize + 2, false),
        ),
      ]),
    );
  }
}
