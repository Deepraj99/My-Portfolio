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
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          width: 1110,
          constraints: BoxConstraints(maxHeight: size.height * 0.709),
          color: Colors.white.withOpacity(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '  Hello there!',
                style: GoogleFonts.rubik(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Text(
                'Deepak\nPrajapati',
                style: GoogleFonts.rubik(
                  color: Colors.white,
                  fontSize: 100,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '  Flutter App Developer\n  Competitive Programmer',
                style: GoogleFonts.rubik(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}







// var nameWidget = "Deepak\nPrajapati"
    //     .text
    //     .gray200
    //     .xl6
    //     .lineHeight(1)
    //     .size(context.isMobile ? 15 : 20)
    //     .bold
    //     .make()
    //     .shimmer();


// child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     // ZStack(
          //     //   [
          //     //     Row(
          //     //       children: [
          //     //         // VStack(
          //     //         //   [
          //     //         //     30.heightBox,
          //     //         //     nameWidget,
          //     //         //   ],
          //     //         // )
          //     //       ],
          //     //     ),
          //     //   ],
          //     // ),

          //   ],
          // ),