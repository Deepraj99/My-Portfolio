import 'dart:ui';
import 'package:portfolio/sections/topSection/components/glass_content.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Stack(
          children: [
            Container(
              alignment: Alignment.center,
              constraints: BoxConstraints(maxHeight: 900, minHeight: 700),
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/bg_img_2.png"),
                ),
                // boxShadow: [kDefaultShadow],
              ),
              child: Container(
                margin: EdgeInsets.only(top: 100),
                width: 1200,
                child: Stack(
                  children: [
                    BlurBox(size: size),
                    // Positioned(
                    //   bottom: 180,
                    //   right: 90,
                    //   child: Container(
                    //     constraints: BoxConstraints(maxWidth: 639, maxHeight: 860),
                    //     child: Image.asset("assets/images/person1.png"),
                    //   ),
                    // ),
                    // Positioned(
                    //   bottom: 180,
                    //   right: 90,
                    //   child: Container(
                    //     width: 60,
                    //     height: 10,
                    //     color: Colors.black,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                Center(
                  child: Container(
                    width: 800,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xff4f617d), //.withOpacity(0.5),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                    width: 800,
                    height: 50,
                    decoration: BoxDecoration(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "About",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          "Education",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          "Projects",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          "Skills",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          "Achievements",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          "Contact",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        // Container(
        //   width: 800,
        //   height: 80,
        //   decoration: BoxDecoration(
        //     color: Colors.grey,
        //   ),
        // ),
      ],
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
