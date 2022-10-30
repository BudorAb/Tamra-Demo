import 'package:budor/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceCard extends StatefulWidget {
  final String serviceIcon;
  final String serviceTitle;
  final String serviceDescription;
  final double cardWidth;
  final double cardHeight;

  const ServiceCard(
      {@required this.serviceIcon,
      this.serviceTitle,
      this.serviceDescription,
      this.cardHeight,
      this.cardWidth});

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: widget.cardWidth,
      height: widget.cardHeight,
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            widget.serviceIcon,
            height: height * 0.1,
            color: kPrimaryColor,
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            widget.serviceTitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Expanded(
            child: Text(
              widget.serviceDescription,
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.w200,
                  height: width < 900 ? 2.3 : 1.5),
            ),
          )
        ],
      ),
    );
  }
}
