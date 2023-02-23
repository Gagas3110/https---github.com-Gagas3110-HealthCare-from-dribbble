import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage('assets/image/tom.jpg'),
        ),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Tom Stuard',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color.fromRGBO(99, 117, 123, 1))),
            SizedBox(height: 10),
            Text('25 yo . Depression . Takes Meds',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey)),
            SizedBox(height: 15),
            Text('11 Feb 2021  16:00-17:00',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color.fromRGBO(54, 113, 90, 1),
                )),
          ],
        ),
      ],
    );
  }
}
