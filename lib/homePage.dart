import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/sections/about/about_section.dart';
import 'package:portfolio/sections/achievements/achievements.dart';
import 'package:portfolio/sections/contact/contact_section.dart';
import 'package:portfolio/sections/education/education_details.dart';
import 'package:portfolio/sections/recent_work/recent_work_section.dart';
import 'package:portfolio/sections/service/service_section.dart';
import 'package:portfolio/sections/skills/skills.dart';

class HomePage extends StatelessWidget {
  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _controller,
        child: Column(
          children: [
            Stack(
              children: [
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      constraints:
                          BoxConstraints(maxHeight: 900, minHeight: 700),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/background.jpg"),
                        ),
                      ),
                    ),
                    Container(
                      constraints:
                          BoxConstraints(maxHeight: 900, minHeight: 700),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.purple.withOpacity(.5),
                      ),
                    ),
                    Center(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                            width: 780,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                            ),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      _onPressed(900.0);
                                    },
                                    child: Text("About",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20)),
                                  ),
                                  SizedBox(width: 40),
                                  InkWell(
                                    onTap: () {
                                      _onPressed(1580.0);
                                    },
                                    child: Text("Education",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20)),
                                  ),
                                  SizedBox(width: 40),
                                  InkWell(
                                    onTap: () {
                                      _onPressed(2600);
                                    },
                                    child: Text(
                                      "Projects",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                  SizedBox(width: 40),
                                  InkWell(
                                    onTap: () {
                                      _onPressed(3850);
                                    },
                                    child: Text("Skills",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20)),
                                  ),
                                  SizedBox(width: 40),
                                  InkWell(
                                    onTap: () {
                                      _onPressed(4250);
                                    },
                                    child: Text("Achievements",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20)),
                                  ),
                                  SizedBox(width: 40),
                                  InkWell(
                                    onTap: () {
                                      _onPressed(4600);
                                    },
                                    child: Text("Contact",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 100),
                          Text(
                            "Hi there!",
                            style: GoogleFonts.lato(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 200),
                          Text(
                            "DEEPAK PRAJAPATI",
                            style: GoogleFonts.lato(
                              fontSize: 100,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Flutter App Developer | Competitive Programmer",
                            style: GoogleFonts.lato(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 220),
                          InkWell(
                            onTap: () {
                              _onPressed(900.0);
                            },
                            child: Container(
                              height: 70,
                              width: 70,
                              child: Icon(
                                Icons.expand_more,
                                size: 70,
                                color: Colors.purple,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // TopSection(),
            SizedBox(height: kDefaultPadding * 2),
            AboutSection(),
            SizedBox(height: kDefaultPadding * 2),
            EducationDetails(),
            SizedBox(height: kDefaultPadding * 2),
            ServiceSection(),
            SizedBox(height: kDefaultPadding * 2),
            RecentWorkSection(),
            SizedBox(height: kDefaultPadding * 2),
            // FeedbackSection(),
            Skills(),
            SizedBox(height: kDefaultPadding * 2),
            Achievements(),
            SizedBox(height: kDefaultPadding * 2),
            ContactSection(),
          ],
        ),
      ),
    );
  }

  void _onPressed(double scrHeight) {
    // Get the height you want to scroll to.
    final screenHeight = scrHeight;

    // If you don't want any animation, use this:
    // _controller.jumpTo(screenHeight);

    // Otherwise use this:
    _controller.animateTo(screenHeight,
        curve: Curves.easeOut, duration: Duration(milliseconds: 2000));
  }
}
