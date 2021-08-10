import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class GraduationYearCard extends StatelessWidget {
  const GraduationYearCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Text(
              "2023",
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 6
                  ..color = Color(0xFFDFA3FF).withOpacity(0.5),
                shadows: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 10,
                    color: Color(0xFFA600FF).withOpacity(0.5),
                  ),
                ],
              ),
            ),
            Text(
              "2023",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 60,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(
          height: kDefaultPadding / 2,
        ),
        Text(
          "Graduation Year",
          style: TextStyle(
            color: Color(0xFFA600FF),
            fontSize: 17,
          ),
        ),
      ],
    );
  }
}
