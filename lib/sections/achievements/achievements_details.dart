import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Acievement1 extends StatelessWidget {
  const Acievement1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          size: 10,
          color: Colors.grey[700],
        ),
        SizedBox(width: 7),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            "Max rating of 1401 (Specialist) on Codeforces",
            style: GoogleFonts.lato(
              fontSize: 20,
              color: Colors.grey[500],
            ),
          ),
        ),
        SizedBox(width: 5),
        InkWell(
          onTap: () {
            openURL("https://www.codechef.com/users/deepraj99");
          },
          child: Text(
            'Here',
            style: GoogleFonts.lato(
              fontSize: 20,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}

//////////////////////////////////////////////
class Acievement2 extends StatelessWidget {
  const Acievement2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          size: 10,
          color: Colors.grey[700],
        ),
        SizedBox(width: 7),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            "Max rating of 1975 (4 Star) on Codechef",
            style: GoogleFonts.lato(
              fontSize: 20,
              color: Colors.grey[500],
            ),
          ),
        ),
        SizedBox(width: 5),
        InkWell(
          onTap: () {
            openURL("https://codeforces.com/profile/Deepraj99");
          },
          child: Text(
            'Here',
            style: GoogleFonts.lato(
              fontSize: 20,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}

////////////////////////////////////////////////
class Acievement3 extends StatelessWidget {
  const Acievement3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          size: 10,
          color: Colors.grey[700],
        ),
        SizedBox(width: 7),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            "Google Kickstart",
            style: GoogleFonts.lato(
              fontSize: 20,
              color: Colors.grey[500],
            ),
          ),
        ),
        SizedBox(width: 5),
        InkWell(
          onTap: () {
            openURL(
                "https://drive.google.com/file/d/10PhKiwRHH9WyMKQ5UUkHc7VhI8ykrae2/view?usp=sharing");
          },
          child: Text(
            'Here',
            style: GoogleFonts.lato(
              fontSize: 20,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}

////////////////////////////////////////////////
class Acievement4 extends StatelessWidget {
  const Acievement4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          size: 10,
          color: Colors.grey[700],
        ),
        SizedBox(width: 7),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            "Google CodeJam",
            style: GoogleFonts.lato(
              fontSize: 20,
              color: Colors.grey[500],
            ),
          ),
        ),
        SizedBox(width: 5),
        InkWell(
          onTap: () {
            openURL(
                "https://drive.google.com/file/d/17daHqfJcK6gKyEcHipcfXbCB3l0MzmWf/view?usp=sharing");
          },
          child: Text(
            'Here',
            style: GoogleFonts.lato(
              fontSize: 20,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}

///////////////////////////////////////////////
class Acievement5 extends StatelessWidget {
  const Acievement5({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          size: 10,
          color: Colors.grey[700],
        ),
        SizedBox(width: 7),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            "Google HashCode AIR(602)",
            style: GoogleFonts.lato(
              fontSize: 20,
              color: Colors.grey[500],
            ),
          ),
        ),
        SizedBox(width: 5),
        InkWell(
          onTap: () {
            openURL(
                "https://drive.google.com/file/d/17daHqfJcK6gKyEcHipcfXbCB3l0MzmWf/view?usp=sharing");
          },
          child: Text(
            'Here',
            style: GoogleFonts.lato(
              fontSize: 20,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}

/////////////////////////////////////////////////
class Acievement6 extends StatelessWidget {
  const Acievement6({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          size: 10,
          color: Colors.grey[700],
        ),
        SizedBox(width: 7),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            "Problem setter at CodeChef",
            style: GoogleFonts.lato(
              fontSize: 20,
              color: Colors.grey[500],
            ),
          ),
        ),
        SizedBox(width: 5),
        InkWell(
          onTap: () {
            openURL("https://www.codechef.com/COOK129B/problems/TLAPM");
          },
          child: Text(
            'Here',
            style: GoogleFonts.lato(
              fontSize: 20,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}

/////////////////////////////////////////////////
class Acievement7 extends StatelessWidget {
  const Acievement7({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          size: 10,
          color: Colors.grey[700],
        ),
        SizedBox(width: 7),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            "Problem setter at Coderation ('Sparcity' codechef cheapter of IIITU",
            style: GoogleFonts.lato(
              fontSize: 20,
              color: Colors.grey[500],
            ),
          ),
        ),
        SizedBox(width: 5),
        InkWell(
          onTap: () {
            openURL("https://www.codechef.com/COD52021/problems/COD5B");
          },
          child: Text(
            'Here1,',
            style: GoogleFonts.lato(
              fontSize: 20,
              color: Colors.blue,
            ),
          ),
        ),
        SizedBox(width: 5),
        InkWell(
          onTap: () {
            openURL("https://www.codechef.com/COD52021/problems/COD5C");
          },
          child: Text(
            'Here2,',
            style: GoogleFonts.lato(
              fontSize: 20,
              color: Colors.blue,
            ),
          ),
        ),
        SizedBox(width: 5),
        InkWell(
          onTap: () {
            openURL("https://www.codechef.com/COD62021/problems/MAXMINGM");
          },
          child: Text(
            'Here3,',
            style: GoogleFonts.lato(
              fontSize: 20,
              color: Colors.blue,
            ),
          ),
        ),
        SizedBox(width: 5),
        InkWell(
          onTap: () {
            openURL("https://www.codechef.com/COD62021/problems/TLWISH");
          },
          child: Text(
            'Here4',
            style: GoogleFonts.lato(
              fontSize: 20,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}

////////////////////////////////////////////////

class Acievement8 extends StatelessWidget {
  const Acievement8({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          size: 10,
          color: Colors.grey[700],
        ),
        SizedBox(width: 7),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            "Received appreciation in opensource from Hacktober Fest organised by Devfolio",
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

////////////////////////////////////////////////

class Acievement9 extends StatelessWidget {
  const Acievement9({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          size: 10,
          color: Colors.grey[700],
        ),
        SizedBox(width: 7),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            "Event Lead of CodeChef College Chapter",
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

///////////////////////////////////////////////
class Acievement10 extends StatelessWidget {
  const Acievement10({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          size: 10,
          color: Colors.grey[700],
        ),
        SizedBox(width: 7),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            "Volunteer at FORCE (Technical club of IIITU)",
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
////////////////////////////////////////////////

openURL(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
