import 'package:flutter/material.dart';
import 'package:health_application/screens/homePage.dart';
import 'package:health_application/screens/historyPage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:health_application/screens/userPage.dart';
import 'package:health_application/utility/constants.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _pageIndex = 1;

  Widget _showPage = new HomePage();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return new HistoryPage();
        break;
      case 1:
        return new HomePage();
        break;
      case 2:
        return new UserPage();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: _pageIndex,
        height: 50.0,
        items: <Widget>[
          Icon(Icons.timer, size: 25,color: kBlueColor,),
          Icon(Icons.home, size: 25,color: kBlueColor,),
          Icon(Icons.person, size: 25,color: kBlueColor,),
        ],
        color: kBlueLightColor,
        buttonBackgroundColor: kBlueLightColor,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        onTap: (int tappedIndex) {
          setState(() {
            _showPage = _pageChooser(tappedIndex);
          });
        },
      ),
      body: Container(
        child: Center(
          child: _showPage,
        ),
      ),
    );
  }
}
