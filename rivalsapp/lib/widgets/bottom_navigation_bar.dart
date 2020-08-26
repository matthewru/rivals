import 'package:flutter/material.dart';
import '../common/colors.dart';
import '../common/icons.dart';
import '../screens/rivals_list.dart';
import '../screens/dashboard.dart';
import '../screens/new_comp.dart';

class BottomTabBar extends StatefulWidget {
  BottomTabBar({Key key}) : super(key: key);

  @override
  _BottomTabBarState createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {

  
  static const _TabPages = <Widget>[
    Dashboard(),
    NewComp(),
    RivalsList()
  ];
  static const _Tabs = <Tab>[
    Tab(icon: Icon(DASHBOARD), text: 'Dashboard'),
    Tab(icon: Icon(ADD_BOX), text: 'New Competition'),
    Tab(icon: Icon(PEOPLE), text: 'Rivals List')
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _Tabs.length,
        child: MaterialApp(
            home: Scaffold(
          appBar: AppBar(title: Text('Pride Rivals')),
          body: TabBarView(children: _TabPages),
          bottomNavigationBar: Material(
              color: BLACK,
              child: TabBar(
                tabs: _Tabs,
              )),
        )));
  }
}
