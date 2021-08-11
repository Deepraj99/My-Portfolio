import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/section_title.dart';
import 'package:portfolio/sections/achievements/achievements_details.dart';

class Achievements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: "Achievements"),
        Container(
          padding: EdgeInsets.all(20),
          height: 260,
          width: 1110,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Competitive Programming",
                  style: GoogleFonts.lato(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Acievement1(),
              Acievement2(),
              Acievement3(),
              Acievement5(),
              Acievement4(),
              Acievement6(),
              Acievement7(),
            ],
          ),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.all(20),
          height: 170,
          width: 1110,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Other",
                  style: GoogleFonts.lato(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Acievement8(),
              Acievement9(),
              Acievement10(),
            ],
          ),
        ),
      ],
    );
  }
}
