
import 'package:budor/sections/mainSection.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'تمرة',
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.white,
        ),
        home: MainPage(),
      ),
    );
  }
}
