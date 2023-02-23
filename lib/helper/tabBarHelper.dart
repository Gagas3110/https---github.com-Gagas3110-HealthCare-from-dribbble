import 'package:flutter/material.dart';

class TabBarHelper extends StatelessWidget {
  const TabBarHelper({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: TabBar(
          padding: EdgeInsets.zero,
          labelColor: Color.fromRGBO(54, 113, 90, 1),
          isScrollable: true,
          labelPadding: EdgeInsets.only(left: 15),
          unselectedLabelColor: Color.fromRGBO(99, 117, 123, 1),
          indicatorColor: Colors.transparent,
          indicatorPadding: EdgeInsets.zero,
          controller: _tabController,
          tabs: [
            Tab(
              text: 'Information',
            ),
            Tab(
              text: 'Medicine',
            ),
            Tab(
              text: 'Diagnoses',
            ),
          ]),
    );
  }
}
