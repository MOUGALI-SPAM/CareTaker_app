import 'package:flutter/material.dart';
import './staff-detail.dart';
import './staff.dart';
import './patient-card.dart';
import './addpatient.dart';

class StaffLoggedInPage extends StatefulWidget {
  const StaffLoggedInPage({Key? key}) : super(key: key);

  @override
  State<StaffLoggedInPage> createState() => _PractiseState();
}

class _PractiseState extends State<StaffLoggedInPage> {
  int indexPage = 0;

  static List<Widget> pages = <Widget>[
    StaffDetail(staff: Staff.staffPersons[2]),
    const PatientCard(),
    AddPatient()
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
          backgroundColor: Colors.orange[50],
        ),
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
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.queue,
                  color: Colors.black54,
                  size: 35,
                ),
                label: 'Patient Cards',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_add,
                  color: Colors.black54,
                  size: 35,
                ),
                label: 'Add Patient',
              ),
            ]),
      ),
    );
  }
}
