import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/section_title.dart';
import 'package:url_launcher/url_launcher.dart';

class EducationDetails extends StatefulWidget {
  const EducationDetails({Key? key}) : super(key: key);

  @override
  _EducationDetailsState createState() => _EducationDetailsState();
}

class _EducationDetailsState extends State<EducationDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SectionTitle(title: "Education"),
          Container(
            padding: EdgeInsets.all(40),
            alignment: Alignment.center,
            width: 1110,
            constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height / 3),
            // decoration: BoxDecoration(color: Colors.grey),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Indian Institute of Information Technology, Una",
                          style: GoogleFonts.lato(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Aug 2019 - Persent",
                      style: GoogleFonts.lato(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Bachelor of Technology in Information Technology",
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[500],
                    ),
                  ),
                ),
                SizedBox(height: 80),
                Container(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.grey[500]),
                      Text(
                        "  Una, Himachal Pradesh",
                        style: GoogleFonts.lato(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      Icon(Icons.link_sharp, color: Colors.grey[500]),
                      Container(
                        child: InkWell(
                          onTap: () {
                            openURL("http://iiitu.ac.in/");
                          },
                          child: Text(
                            "  www.iiitu.ac.in",
                            style: GoogleFonts.lato(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
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
