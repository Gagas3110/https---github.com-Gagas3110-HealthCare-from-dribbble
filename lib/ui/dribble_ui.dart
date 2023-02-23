import 'package:dribble_design/helper/appbar.dart';
import 'package:dribble_design/helper/box.dart';
import 'package:dribble_design/helper/profile.dart';
import 'package:dribble_design/helper/tabBarHelper.dart';
import 'package:dribble_design/helper/viewTabBar.dart';
import 'package:flutter/material.dart';

class DribbleUi extends StatefulWidget {
  const DribbleUi({super.key});

  @override
  State<DribbleUi> createState() => _DribbleUiState();
}

class _DribbleUiState extends State<DribbleUi> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: prefAppBar(context),
      body: Container(
          padding: EdgeInsets.only(left: 15, bottom: 15, top: 15, right: 15),
          height: height,
          width: width,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileWidget(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Complaints',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(99, 117, 123, 1)),
                ),
                SizedBox(
                  height: 20,
                ),
                BoxWidget(),
                SizedBox(height: 10),
                TabBarHelper(tabController: _tabController),
                ViewContentTabBar(tabController: _tabController),
              ], //end of column
            ),
          )),
    );
  }
}
