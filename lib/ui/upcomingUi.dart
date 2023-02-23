import 'package:dribble_design/helper/appbar.dart';
import 'package:dribble_design/ui/dribble_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UpComingUi extends StatefulWidget {
  const UpComingUi({super.key});

  @override
  State<UpComingUi> createState() => _UpComingUiState();
}

class _UpComingUiState extends State<UpComingUi> {
  int selectedInd = 0;
  DateTime now = DateTime.now();
  DateTime? lastDayOfMonth;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    lastDayOfMonth = DateTime(now.year, now.month, now.day);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      extendBody: true,
      appBar: waveAppBar(context),
      floatingActionButton: CreateBottombar(context),
      body: bodyContentupComing(height, width, context),
    );
  }

  Container bodyContentupComing(
      double height, double width, BuildContext context) {
    return Container(
        height: height,
        width: width,
        padding: EdgeInsets.only(left: 15, right: 15, top: 5),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Good Morning Dr.Kim',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              SizedBox(height: 10),
              Text('You Have 5 Session Today',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Color.fromRGBO(99, 117, 123, 1))),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                    children: List.generate(365, (index) {
                  final currentDate =
                      lastDayOfMonth!.add(Duration(days: index));
                  final dayName = DateFormat('E').format(currentDate);
                  return Padding(
                    padding: EdgeInsets.only(
                        left: index == 0 ? 15.0 : 0.0, right: 15.0),
                    child: GestureDetector(
                      onTap: () => setState(() {
                        selectedInd = index;
                      }),
                      child: Container(
                        height: 100,
                        width: 65,
                        decoration: BoxDecoration(
                            color: selectedInd == index
                                ? Colors.grey.shade300
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(12)),
                        child: Column(children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(12)),
                            child: Container(
                              height: 42.0,
                              width: 42.0,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: selectedInd == index
                                    ? Color.fromRGBO(107, 166, 143, 1)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(44.0),
                              ),
                              child: Text(
                                currentDate.day.toString(),
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: selectedInd == index
                                      ? Colors.white
                                      : Colors.black54,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            dayName.substring(0, 3),
                            style: const TextStyle(
                              fontSize: 14.0,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Container(
                            height: 2.0,
                            width: 28.0,
                            color: selectedInd == index
                                ? Color.fromRGBO(107, 166, 143, 1)
                                : Colors.transparent,
                          ),
                        ]),
                      ),
                    ),
                  );
                })),
              ),
              SizedBox(height: 20),
              Text(
                'Upcoming Sessions',
                style: TextStyle(
                    fontSize: 18, color: Color.fromRGBO(99, 117, 123, 1)),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DribbleUi()),
                  );
                },
                child: Container(
                    padding: EdgeInsets.only(
                        top: 20, bottom: 20, left: 20, right: 20),
                    width: double.infinity,
                    constraints: BoxConstraints(minHeight: 100),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/image/tom.jpg'),
                              radius: 25,
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sarah Miller',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 12),
                                Text(
                                  '25 yo . Depression . Takes  meds',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey.shade500,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 50),
                                Text(
                                  '23 Feb 2021 12:00-13:31',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromRGBO(107, 166, 143, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    )),
              ),
              SizedBox(height: 15),
              Container(
                  padding:
                      EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                  width: double.infinity,
                  constraints: BoxConstraints(minHeight: 100),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/image/tom.jpg'),
                            radius: 25,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Jill Robins',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 12),
                              Text(
                                '23 yo . ADHD . no  meds',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey.shade500,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 50),
                              Text(
                                '23 Feb 2021 14:00-14:31',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromRGBO(107, 166, 143, 1),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  )),
              SizedBox(height: 15),
              Container(
                  padding:
                      EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                  width: double.infinity,
                  constraints: BoxConstraints(minHeight: 100),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/image/tom.jpg'),
                            radius: 25,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Tom Stuard',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 12),
                              Text(
                                '25 yo . Depression . Takes  meds',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey.shade500,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 50),
                              Text(
                                '23 Feb 2021 15:00-15:31',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromRGBO(107, 166, 143, 1),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ));
  }

  Container CreateBottombar(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15),
      height: 70,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 30,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromRGBO(54, 113, 90, 1),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                //Icons.home_outlined,
                CupertinoIcons.home,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                //Icons.chat_bubble_outline,
                CupertinoIcons.chat_bubble,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.calendar,
                color: Colors.white,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person,
                color: Colors.white,
              ),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          //onTap: _onItemTapped,
        ),
      ),
    );
  }
}
