import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Colors
Color kPrimaryColor = Color(0xFF1C254E);

// Social Media
const kSocialIcons = [
  "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
  "https://img.icons8.com/android/480/ffffff/twitter.png",
  "https://img.icons8.com/metro/308/ffffff/linkedin.png",
];

// URL Launcher
void launchURL(String _url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

final kTools1 = [];

// services
final kServicesIcons = [
  "assets/services/booking.png",
  "assets/services/progress.png",
  "assets/services/hand.png",
];

final kServicesTitles = [
  "تسهيل الاستثمار بالتقنية",
  "تنميـــة مواردك الماليــة",
  "تأمين مستقبلك المالي",
];

final kServicesDescriptions = [
  "يُتاح لك اليوم الاستثمار محليًا وعالميًا بأسهل الطرق وأسرعها بإتمام العملية بطريقة آلية من خلال تسخير التقنية.",
  "يحافظ الاستثمار على قيمة أموالك الفعلية من التضخم وينميها بعد سنوات لتزداد قيمتها.",
  "يضمن لك الاستثمار طويل المدى حريتـــــــــك المالية المستقبلية بعد التقاعد أو عند قرارك بالعمل على تحقيق أحلامك.",
];
