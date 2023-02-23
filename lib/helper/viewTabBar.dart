import 'package:dribble_design/helper/ContentWidget.dart';
import 'package:dribble_design/helper/generalboxwidget.dart';
import 'package:flutter/material.dart';

class ViewContentTabBar extends StatelessWidget {
  const ViewContentTabBar({
    Key? key,
    required TabController tabController,
  }) : _tabController = tabController, super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      child: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Container(
            width: double.infinity,
            constraints: BoxConstraints(maxHeight: 1000),
            child: Center(
              child: Column(
                children: [
                  GeneralBoxWidget(),
                  SizedBox(height: 20),
                  ContentWidget(),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            constraints: BoxConstraints(maxHeight: 1000),
            child: Center(
              child: Column(
                children: [
                  GeneralBoxWidget(),
                  SizedBox(height: 20),
                  ContentWidget(),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            constraints: BoxConstraints(maxHeight: 1000),
            child: Center(
              child: Column(
                children: [
                  GeneralBoxWidget(),
                  SizedBox(height: 20),
                  ContentWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}