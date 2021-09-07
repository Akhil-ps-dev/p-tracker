//@dart=2.9
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_period/screens/02Info_screen.dart';
import 'package:flutter_period/screens/03calender_screen.dart';

import 'package:flutter_period/screens/04note_screen.dart';
import 'package:flutter_period/screens/05settings_screen.dart';
import 'package:flutter_period/screens/01home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  final screen = [
    HomeScreen(),
    InformationScreen(),
    DateRangePickerWidget(),
    NoteScreen(),
    SettingsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.pink.shade200,
        backgroundColor: Colors.white,
        index: selectedIndex,
        items: [
          Icon(
            FontAwesomeIcons.home,
            color: Colors.white,
            size: 25,
          ),
          Icon(
            FontAwesomeIcons.list,
            color: Colors.white,
            size: 25,
          ),
          Icon(
            FontAwesomeIcons.calendarAlt,
            color: Colors.white,
            size: 25,
          ),
          Icon(
            FontAwesomeIcons.solidStickyNote,
            color: Colors.white,
            size: 25,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
            size: 25,
          ),
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        animationCurve: Curves.easeInOutCirc,
        animationDuration: const Duration(milliseconds: 300),
      ),
      body: screen[selectedIndex],
    );
  }
}
