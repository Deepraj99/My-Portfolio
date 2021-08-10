import 'dart:ui';
import 'package:portfolio/sections/topSection/components/glass_content.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/background.png"),
        ),
        boxShadow: [kDefaultShadow],
      ),
      child: Container(
        margin: EdgeInsets.only(top: 100),
        width: 1200,
        child: Stack(
          children: [
            BlurBox(size: size),
            Positioned(
              bottom: 180,
              right: 90,
              child: Container(
                constraints: BoxConstraints(maxWidth: 639, maxHeight: 860),
                child: Image.asset("assets/images/person1.png"),
              ),
            ),
            Positioned(
              bottom: 180,
              right: 90,
              child: Container(
                width: 60,
                height: 10,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BlurBox extends StatelessWidget {
  const BlurBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GlassContent(size: size),
      ],
    );
  }
}
