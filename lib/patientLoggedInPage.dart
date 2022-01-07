import 'package:flutter/material.dart';
import './meals.dart';
import './patient.dart';
import './patient_detail.dart';

class PatientLoggedInPage extends StatefulWidget {
  const PatientLoggedInPage({Key? key}) : super(key: key);

  @override
  State<PatientLoggedInPage> createState() => _PractiseState();
}

class _PractiseState extends State<PatientLoggedInPage> {
  int indexPage = 0;

  static List<Widget> pages = <Widget>[
    PatientDetail(patient: Patient.person[1]),
    const Card3(),
  ];

  void onItemTapped(int index) {
    setState(() {
      indexPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Profile',
            style: TextStyle(color: Colors.black, fontSize: 33),
          ),
          backgroundColor: Colors.orange[50],
        ),
        backgroundColor: Colors.black87,
        body: SafeArea(child: pages[indexPage]),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.orange[50],
            selectedItemColor:
                Theme.of(context).textSelectionTheme.selectionColor,
            currentIndex: indexPage,
            onTap: onItemTapped,
            fixedColor: Colors.black,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.black54,
                  size: 35,
                ),
                label: 'Patient Profile',
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.food_bank_sharp,
                  color: Colors.black54,
                  size: 35,
                ),
                label: 'Meals',
              ),
            ]),
      ),
    );
  }
}
