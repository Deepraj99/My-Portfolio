import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/section_title.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: "Skills"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Widgets(data: "C/C++"),
            SizedBox(width: 10),
            Widgets(data: "Flutter"),
            SizedBox(width: 10),
            Widgets(data: "Data Structure"),
            SizedBox(width: 10),
            Widgets(data: "Algorithms"),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Widgets(data: "Linux"),
            SizedBox(width: 10),
            Widgets(data: "GitHub"),
            SizedBox(width: 10),
            Widgets(data: "Firebase"),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Widgets(data: "Problem Solving"),
            SizedBox(width: 10),
            Widgets(data: "Team Work"),
          ],
        ),
        SizedBox(height: 100),
      ],
    );
  }
}

class Widgets extends StatelessWidget {
  Widgets({
    Key? key,
    required this.data,
  }) : super(key: key);
  String data;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      child: Center(
        child: Text(
          data,
          style: GoogleFonts.lato(
            fontSize: 20,
            color: Colors.white70,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.grey[700],
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
