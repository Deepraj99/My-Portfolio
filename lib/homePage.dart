import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/sections/about/about_section.dart';
import 'package:portfolio/sections/service/service_section.dart';
import 'package:portfolio/sections/topSection/topSection.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            SizedBox(height: kDefaultPadding * 6),
            AboutSection(),
            ServiceSection(),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
