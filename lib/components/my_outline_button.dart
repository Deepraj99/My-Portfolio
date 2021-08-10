import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

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
        onPressed: () {},
        child: Row(
          children: [
            Image.asset(
              "assets/images/hand.png",
              height: 40,
            ),
            SizedBox(
              width: kDefaultPadding,
            ),
            Text("Hire Me!"),
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
        onPressed: () {},
        child: Row(
          children: [
            Image.asset(
              "assets/images/download.png",
              height: 40,
            ),
            SizedBox(
              width: kDefaultPadding,
            ),
            Text("Download CV"),
          ],
        ),
      ),
    );
  }
}
