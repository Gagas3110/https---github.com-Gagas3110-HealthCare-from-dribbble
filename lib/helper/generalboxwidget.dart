import 'package:flutter/material.dart';

class GeneralBoxWidget extends StatelessWidget {
  const GeneralBoxWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, bottom: 15, top: 15, right: 15),
      constraints: BoxConstraints(minWidth: double.infinity, maxHeight: 250),
      decoration: BoxDecoration(
          color: Colors.grey.shade100, borderRadius: BorderRadius.circular(20)),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'General',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(125, 138, 144, 1)),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                'First Name',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              Spacer(),
              Text(
                'Tom',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(99, 117, 123, 1)),
              ),
            ],
          ),
          SizedBox(height: 5),
          Divider(color: Colors.grey.shade500),
          Row(
            children: [
              Text(
                'Last Name',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              Spacer(),
              Text(
                'Stuard',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(99, 117, 123, 1)),
              ),
            ],
          ),
          SizedBox(height: 5),
          Divider(color: Colors.grey.shade500),
          Row(
            children: [
              Text(
                'Date of Birth',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              Spacer(),
              Text(
                '07 June 1995',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(99, 117, 123, 1)),
              ),
            ],
          ),
          SizedBox(height: 5),
          Divider(color: Colors.grey.shade500),
          Row(
            children: [
              Text(
                'Gender',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              Spacer(),
              Text(
                'Male',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(99, 117, 123, 1)),
              ),
            ],
          ),
          SizedBox(height: 5),
          Divider(),
        ]),
      ),
    );
  }
}
