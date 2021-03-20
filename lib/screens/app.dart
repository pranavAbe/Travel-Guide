import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../widgets/build_card.dart';
import '../models/location_data.dart';
import '../widgets/search.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  PersistentTabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
        ),
        leading: IconButton(
            splashColor: Colors.grey[700],
            splashRadius: 25,
            icon: Icon(Icons.search_rounded, size: 30),
            onPressed: () async {
              final result = await showSearch<String>(
                  context: context, delegate: Search());
            }),
        centerTitle: true,
        title: Text(
          "Travel Guide",
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              fontSize: 22),
          textAlign: TextAlign.center,
        ),
      ),
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.grey[900],
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties(
          duration: Duration(milliseconds: 250),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 250),
        ),
        navBarStyle: NavBarStyle.style9,
      ),
    );
  }
}

List<Widget> _buildScreens() {
  return [
    ListView(
      scrollDirection: Axis.vertical,
      children: locationDataList
          .map((locationData) => BuildCard(locationData))
          .toList(),
    ),
    Center(child: Container(child: Text("Add a new location here!"))),
    Center(child: Container(child: Text("View all your likes here!"))),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(Icons.home),
      title: ("Browse"),
      activeColor: Colors.blue[400],
      inactiveColor: Colors.grey[350],
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.add),
      title: ("Add"),
      activeColor: Colors.orange[400],
      inactiveColor: Colors.grey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.favorite_rounded),
      title: ("Likes"),
      activeColor: Colors.pink,
      inactiveColor: Colors.grey[400],
    ),
  ];
}
