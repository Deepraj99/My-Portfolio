import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/recentWork.dart';

class RecentWorkCard extends StatefulWidget {
  RecentWorkCard({
    Key? key,
    required this.index,
    required this.press,
  }) : super(key: key);
  final int index;
  final Function press;

  @override
  _RecentWorkCardState createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: widget.press, //fix it
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: Duration(microseconds: 200),
        height: 320,
        width: 540,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Row(
          children: [
            Image.asset(recentWorks[widget.index].image),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(recentWorks[widget.index].category.toLowerCase()),
                    SizedBox(height: kDefaultPadding / 2),
                    Text(
                      recentWorks[widget.index].title,
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(height: 1.5),
                    ),
                    SizedBox(
                      height: kDefaultPadding,
                    ),
                    Text(
                      "View Details",
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
