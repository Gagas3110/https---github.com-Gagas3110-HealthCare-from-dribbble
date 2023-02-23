import 'package:flutter/material.dart';

class BoxWidget extends StatelessWidget {
  const BoxWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: 100, minHeight: 40),
              decoration: BoxDecoration(
                color: Color.fromRGBO(54, 113, 90, 1),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Center(
                child: Text(
                  'bad mood',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Spacer(),
            Container(
              constraints: BoxConstraints(maxWidth: 100, minHeight: 40),
              decoration: BoxDecoration(
                color: Color.fromRGBO(54, 113, 90, 1),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Center(
                child: Text(
                  'insomnia',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Spacer(),
            Container(
              constraints: BoxConstraints(maxWidth: 100, minHeight: 40),
              decoration: BoxDecoration(
                color: Color.fromRGBO(54, 113, 90, 1),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Center(
                child: Text(
                  'apathy',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Spacer(),
            Container(
              constraints: BoxConstraints(minWidth: 50, minHeight: 40),
              decoration: BoxDecoration(
                color: Color.fromRGBO(54, 113, 90, 1),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Center(
                child: Text(
                  'anger',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: 150, minHeight: 40),
              decoration: BoxDecoration(
                color: Color.fromRGBO(54, 113, 90, 1),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Center(
                child: Text(
                  'mood swings',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(width: 5),
            Container(
              constraints: BoxConstraints(minWidth: 150, minHeight: 40),
              decoration: BoxDecoration(
                color: Color.fromRGBO(54, 113, 90, 1),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Center(
                child: Text(
                  'panic attacks',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ],
    );
  }
}
