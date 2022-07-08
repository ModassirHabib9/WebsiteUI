import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_portfolio/Tabs/DashboardTab.dart';
import 'package:web_portfolio/Tabs/ForensicsTab.dart';
import 'package:web_portfolio/Tabs/ScreeningTab.dart';
import 'package:web_portfolio/Tabs/SettingTab.dart';

import '../../Tabs/ManualScreeningTab.dart';

class TabbarScreen extends StatelessWidget {
  TabbarScreen({Key key}) : super(key: key);

  final _KTabPages = <Widget>[
    Tab(text: 'Dashboard'),
    Tab(text: 'Screenings'),
    Tab(text: 'Forensics'),
    Tab(text: 'Manual Screenings'),
    Tab(text: 'Settings'),
  ];
  final _KTabViews = <Widget>[
    DashboardTab(),
    ScreeningTab(),
    ForensicsTab(),
    ManualScreeningTab(),
    SettingTab(),
  ];

  @override
  Widget build(BuildContext context) {
    const Size(360, 690);
    return DefaultTabController(
        initialIndex: 1,
        length: _KTabViews.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            elevation: 0,
            actionsIconTheme: IconThemeData(color: Colors.black),
            iconTheme: IconThemeData(color: Colors.black),
            toolbarTextStyle: TextStyle(color: Colors.black),
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 300, child: Image.asset('assets/logo.png')),
                TabBar(tabs: _KTabPages, isScrollable: true),
              ],
            ),
          ),
          body: TabBarView(
            children: _KTabViews,
          ),
        ));
  }
}
