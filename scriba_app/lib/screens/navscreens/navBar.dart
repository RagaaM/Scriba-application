import 'package:flutter/material.dart';
import 'package:scriba_app/defaults/theme.dart';
import 'package:scriba_app/screens/navscreens/account.dart';
import 'package:scriba_app/screens/navscreens/history.dart';
import 'package:scriba_app/screens/navscreens/homepage.dart';
import 'package:scriba_app/screens/navscreens/myths.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';

class NavigationBarr extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
          body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Back-dark.png"),
                fit: BoxFit.fill)),
        child: navBar(),
      ));
}

class navBar extends StatefulWidget {
  navBar({Key? key}) : super(key: key);

  @override
  State<navBar> createState() => _navBarState();
}

int currentIndex = 0;
var _selectedTab = _SelectedTab.home;

class _navBarState extends State<navBar> {
  List pages = [
    Homepage(),
    MythsPage(),
    HistoryPage(),
    AccountPage(),
  ];

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
      currentIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: pages[currentIndex],
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: DotNavigationBar(
          // enableFloatingNavBar: true,

          paddingR: EdgeInsets.all(5),

          //curve: Curves.slowMiddle,
          backgroundColor: AppTheme.darkRed,

          margin: EdgeInsets.only(left: 15, right: 15),
          currentIndex: _SelectedTab.values.indexOf(_selectedTab),

          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              offset: Offset(0, 3),
              spreadRadius: 0,
            )
          ],
          dotIndicatorColor: AppTheme.moderateOrange,
          unselectedItemColor: Colors.grey,
          onTap: _handleIndexChanged,
          items: [
            DotNavigationBarItem(
                icon: Icon(Icons.home), selectedColor: AppTheme.moderateOrange),
            DotNavigationBarItem(
                icon: Icon(Icons.maps_ugc_outlined),
                selectedColor: AppTheme.moderateOrange),
            DotNavigationBarItem(
                icon: Icon(Icons.star), selectedColor: AppTheme.moderateOrange),
            DotNavigationBarItem(
                icon: Icon(Icons.person),
                selectedColor: AppTheme.moderateOrange),
          ],
        ),
      ),
    );
  }
}

enum _SelectedTab { home, myth, history, account }