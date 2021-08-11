import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/my_outline_button.dart';
import 'package:portfolio/components/section_title.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/sections/topSection/components/graduationYearCard.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(title: "About Me"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\"Software Engineering student with excellent\nproblem-solving skills, Mobile App Developer\nusing Flutter, Competitive Programmer and\nability to perform well in a team. Passionate\nabout coding and trying to build an easy and\nlazy life.\"",
                  style: GoogleFonts.lato(
                    fontSize: 40,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey[500],
                  ),
                ),
                SizedBox(width: 70),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  padding: EdgeInsets.all(kDefaultPadding),
                  height: 240,
                  width: 255,
                  decoration: BoxDecoration(
                    color: Color(0xFFF7E8FF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0xFFEDD2FC),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 3),
                          blurRadius: 6,
                          color: Color(0xFFA600FF).withOpacity(.30),
                        ),
                      ],
                    ),
                    child: GraduationYearCard(),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: kDefaultPadding * 3),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyMaterialButton(),
                SizedBox(width: kDefaultPadding * 1.5),
                MyMaterialButton1(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
