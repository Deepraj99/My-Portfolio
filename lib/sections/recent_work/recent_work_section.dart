import 'package:flutter/material.dart';
import 'package:portfolio/components/hire_me_card.dart';
import 'package:portfolio/components/section_title.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/recentWork.dart';
import 'package:portfolio/sections/recent_work/components/recent_work_card.dart';

class RecentWorkSection extends StatelessWidget {
  const RecentWorkSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding * 6),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF).withOpacity(0.3),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/recent_work_bg.png"),
        ),
      ),
      child: Column(
        children: [
          Transform.translate(
            offset: Offset(0, -80),
            child: HireMeCard(),
          ),
          SectionTitle(title: "Projects"),
          SizedBox(height: kDefaultPadding * 1.5),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Row(
                  children: [
                    Project1(),
                    SizedBox(width: 20),
                    Project2(),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Project3(),
                    SizedBox(width: 20),
                    Project4(),
                  ],
                ),
                SizedBox(height: kDefaultPadding * 4),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
