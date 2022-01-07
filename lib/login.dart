import 'package:flutter/material.dart';

import './stafflogin.dart';
import './patientlogIn.dart';
import 'doctorlogin.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Center(
                    child: Column(
                      children: [
                        ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.black87),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PatientLogin()),
                            );
                          },
                          child: Text(
                            'PATIENT',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                        ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.black87),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StaffLogin()),
                            );
                          },
                          child: Text(
                            'STAFF',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                        ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.black87),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DoctorLogin()),
                            );
                          },
                          child: Text(
                            'DOCTOR',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
