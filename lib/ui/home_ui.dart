import 'package:dribble_design/ui/upcomingUi.dart';
import 'package:flutter/material.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(54, 113, 90, 1),
      body: Container(
        padding: EdgeInsets.only(top: height * 0.5),
        height: height,
        width: width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/green.jpg'), fit: BoxFit.fill)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Therapy & Care',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'We help proffesional therapists \n and patients find each other',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: height * 0.06,
              width: width * 0.2,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const UpComingUi()),
                  );
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(
                      color: Color.fromRGBO(54, 113, 90, 1),
                      fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
