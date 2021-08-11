import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';
import 'package:velocity_x/velocity_x.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 1110,
          constraints: BoxConstraints(maxHeight: size.height * 0.709),
          decoration: BoxDecoration(
            color: Color(0xff4f617d), //.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          width: 1110,
          constraints: BoxConstraints(maxHeight: size.height * 0.709),
          color: Colors.white.withOpacity(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '  Hello there!',
                style: GoogleFonts.rubik(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 200),
              Text(
                'Deepak Prajapati',
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Text(
                '  Flutter App Developer | Competitive Programmer',
                style: GoogleFonts.rubik(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
