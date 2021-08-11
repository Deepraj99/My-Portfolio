import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/sections/about/about_section.dart';
import 'package:portfolio/sections/contact/contact_section.dart';
import 'package:portfolio/sections/feedback/feedback_section.dart';
import 'package:portfolio/sections/recent_work/recent_work_section.dart';
import 'package:portfolio/sections/service/service_section.dart';
import 'package:portfolio/sections/topSection/topSection.dart';

class HomePage extends StatelessWidget {
  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _controller,
        child: Column(
          children: [
            // MaterialButton(
            //   onPressed: () {
            //     _onPressed();
            //   },
            //   color: Colors.black,
            // ),
            TopSection(),
            SizedBox(height: kDefaultPadding * 6),
            AboutSection(),
            ServiceSection(),
            RecentWorkSection(),
            FeedbackSection(),
            SizedBox(height: kDefaultPadding),
            ContactSection(),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }

  void _onPressed() {
    // Get the height you want to scroll to.
    final screenHeight = 2000.0;

    // If you don't want any animation, use this:
    _controller.jumpTo(screenHeight);

    // Otherwise use this:
    _controller.animateTo(screenHeight,
        curve: Curves.easeOut, duration: Duration(seconds: 1));
  }
}
