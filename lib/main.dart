import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:practise/login.dart';
import './patient_detail.dart';
import './patient.dart';
import 'patient-card.dart';
import 'meals.dart';
import './login.dart';

void main() {
  runApp(_MyApp());
}

class _MyApp extends StatefulWidget {
  @override
  State<_MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[Login(), Container(color: Colors.grey)];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orange[50],
        appBar: AppBar(
          backgroundColor: Colors.orange[50],
          title: Text(
            'Civil Hospital',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.orange[50],
          selectedItemColor:
              Theme.of(context).textSelectionTheme.selectionColor,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          fixedColor: Colors.black,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black54,
                size: 35,
              ),
              label: 'Patient Card',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.dangerous,
                color: Colors.black54,
                size: 35,
              ),
              label: 'Emergency Details',
            ),
          ],
        ),
      ),
    );
  }
}
