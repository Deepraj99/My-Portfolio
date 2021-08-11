import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/section_title.dart';
import 'package:portfolio/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg_img_2.png"),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding * 2.5),
          SectionTitle(title: "Contact Me"),
          ContactBox(),
        ],
      ),
    );
  }
}

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1110),
      margin: EdgeInsets.only(top: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding * 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            height: 170,
            width: 1110,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Deepak Prajapati",
                    style: GoogleFonts.lato(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Address(
                    text: "Deoria, Uttar Pradesh, India",
                    icon: Icons.location_on),
                SizedBox(height: 5),
                Address(text: "this.deepraj@gmail.com", icon: Icons.email),
                SizedBox(height: 5),
                Address(text: "+91 7266070069", icon: Icons.phone),
              ],
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  openURL(
                      'https://www.linkedin.com/in/deepak-prajapati-08b8b3191/');
                },
                child: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset("assets/images/linkedIn.png"),
                ),
              ),
              SizedBox(width: 20),
              InkWell(
                onTap: () {
                  openURL('https://github.com/Deepraj99');
                },
                child: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset("assets/images/github.png"),
                ),
              ),
              SizedBox(width: 20),
              InkWell(
                onTap: () {
                  openURL('https://www.instagram.com/hey.deepraj/');
                },
                child: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset("assets/images/instagram.jpeg"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Address extends StatelessWidget {
  Address({Key? key, required this.text, required this.icon}) : super(key: key);
  String text;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 18,
          color: Colors.grey[700],
        ),
        SizedBox(width: 7),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            text,
            style: GoogleFonts.lato(
              fontSize: 20,
              color: Colors.grey[500],
            ),
          ),
        ),
      ],
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
