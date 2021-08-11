import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

// SocialCard(
//                 color: Colors.white,
//                 iconSrc: "assets/images/linkedIn.png",
//                 name: "",
//                 press: () {
//                   openURL(
//                       'https://www.linkedin.com/in/deepak-prajapati-08b8b3191/');
//                 },
//               ),
class SocialCard extends StatefulWidget {
  SocialCard({
    Key? key,
    required this.iconSrc,
    required this.name,
    required this.color,
    required this.press,
  }) : super(key: key);
  final String iconSrc, name;
  final Color color;
  final Function press;

  @override
  _SocalCardState createState() => _SocalCardState();
}

class _SocalCardState extends State<SocialCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: InkWell(
        // onTap: widget.press, //fix it 2
        onHover: (value) {
          isHover = value;
        },
        child: AnimatedContainer(
          duration: Duration(microseconds: 200),
          padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding / 2,
            horizontal: kDefaultPadding * 1.5,
          ),
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultShadow],
          ),
          child: Row(
            children: [
              Image.asset(
                widget.iconSrc,
                height: 80,
                width: 80,
              ),
              SizedBox(width: kDefaultPadding),
              Text(widget.name),
            ],
          ),
        ),
      ),
    );
  }
}
