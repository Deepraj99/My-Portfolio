import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class MyMaterialButton extends StatelessWidget {
  const MyMaterialButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: MaterialButton(
        padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding, horizontal: kDefaultPadding * 2.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        color: Color(0xFFE8F0F9),
        onPressed: () {
          openURL('https://this.deepraj@gmail.com');
        },
        child: Row(
          children: [
            Image.asset(
              "assets/images/hand.png",
              height: 40,
            ),
            SizedBox(
              width: kDefaultPadding,
            ),
            Text(
              "Hire Me!",
              style: GoogleFonts.lato(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyMaterialButton1 extends StatelessWidget {
  const MyMaterialButton1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: MaterialButton(
        padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding, horizontal: kDefaultPadding * 2.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        color: Color(0xFFE8F0F9),
        onPressed: () {
          openURL(
              'https://drive.google.com/file/d/12-kRhEC78uQ83wffCBQgKCSVUuYsuDDC/view?usp=sharing');
        },
        child: Row(
          children: [
            Image.asset(
              "assets/images/download.png",
              height: 40,
            ),
            SizedBox(
              width: kDefaultPadding,
            ),
            Text(
              "Download CV",
              style: GoogleFonts.lato(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

openURL(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
