import 'package:flutter/material.dart';
import './doctor-detail.dart';
import './doctor.dart';
import './patient-card.dart';
import './staff-card.dart';

class DoctorLoggedInPage extends StatefulWidget {
  const DoctorLoggedInPage({Key? key}) : super(key: key);

  @override
  State<DoctorLoggedInPage> createState() => _PractiseState();
}

class _PractiseState extends State<DoctorLoggedInPage> {
  int indexPage = 0;

  static List<Widget> pages = <Widget>[
    DoctorDetail(doctor: Doctor.doctorPersons[1]),
    const PatientCard(),
    const StaffCard()
  ];

  void onItemTapped(int index) {
    setState(() {
      indexPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange[50],
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
                icon: Icon(Icons.person, color: Colors.black54, size: 35),
                label: 'Profile',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.list_rounded, color: Colors.black54, size: 35),
                label: 'Patient Cards',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list_rounded, color: Colors.black54, size: 35),
                label: 'Staff Cards',
              ),
            ]),
      ),
    );
  }
}
