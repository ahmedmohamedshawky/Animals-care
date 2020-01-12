import 'package:flutter/material.dart';
import 'package:testa/Functions/DrawerNavigator.dart';
import 'package:testa/Functions/TheBottomTabs.dart';

import 'AdoptionTab.dart';
import 'NewsTab.dart';
import 'veterinary.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabcontrolar;
  @override
  void initState() {
    super.initState();
    _tabcontrolar = TabController(length: 3, vsync: this);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerNavegator(),
      appBar: AppBar(
        bottom: TabBar(
          tabs: appTab,
          controller: _tabcontrolar,
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
        ],
        title: Text(
          'Home',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.red.shade900,
        elevation: 9,
      ),
      body: TabBarView(controller: _tabcontrolar, children: [
        NewsTab(),
        Veterinary(),
        Adoption(),
      ]),
    );
  }
}
