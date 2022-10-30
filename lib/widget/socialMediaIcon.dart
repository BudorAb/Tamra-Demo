import 'package:budor/constants.dart';
import 'package:flutter/material.dart';

class SocialMediaIconBtn extends StatelessWidget {
  final String icon;
  final String socialLink;
  final double height;
  final double horizontalPadding;

  SocialMediaIconBtn(
      {this.icon, this.socialLink, this.height, this.horizontalPadding});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Container(
        color: Colors.transparent,
        child: IconButton(
          icon: Image.network(
            icon,
          ),
          iconSize: height,
          onPressed: () => launchURL(socialLink),
        ),
      ),
    );
  }
}
