import 'package:flutter/material.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, bottom: 15, top: 15, right: 15),
      constraints: BoxConstraints(minWidth: double.infinity, maxHeight: 220),
      decoration: BoxDecoration(
          color: Colors.grey.shade100, borderRadius: BorderRadius.circular(20)),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Additional',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(125, 138, 144, 1)),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Therapist Notes :',
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          SizedBox(height: 10),
          Text(
            'Tom showed all nine symptoms of major deppresion for at least two weeks : deppressed mood, weight loss, insomnia, restlessness, loss of energy, extreme guilt and many other. ',
            style: TextStyle(
                color: Colors.grey.shade500, fontWeight: FontWeight.bold),
            textAlign: TextAlign.justify,
          ),
        ]),
      ),
    );
  }
}
