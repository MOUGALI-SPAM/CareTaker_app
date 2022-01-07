import 'package:flutter/material.dart';

class Staff {
  String name;
  String imageUrl;
  List<PersonalDetails> personaldetails;

  Staff(this.name, this.imageUrl, this.personaldetails);

  static List<Staff> staffPersons = [
    Staff('Ramanand', 'assets/staff/8.jpeg', [
      PersonalDetails(
          'DEPUTY MEDICAL SUPERINTENDENT', 4243444546, '12-BE, High Society', 3)
    ]),
    Staff('Nihar Kumar', 'assets/staff/9.jpeg',
        [PersonalDetails('DRESSER', 4243123546, '12-BE, High Society', 3)]),
    Staff('Alok Kumar', 'assets/staff/10.jpeg', [
      PersonalDetails(
          'EMERGENCY MEDICAL OFFICERS', 4223144546, '12-BE, High Society', 3)
    ]),
    Staff('Sunil Dutt', 'assets/staff/11.jpeg', [
      PersonalDetails(
          'MATRON OR NURSING SUPER', 4243478967, '12-BE, High Society', 3)
    ]),
    Staff('Prabhakar Mishra', 'assets/staff/12.jpeg',
        [PersonalDetails('STORE KEEPER', 4276012330, '12-BE, High Society', 3)])
  ];
}

class PersonalDetails {
  String designation;
  String address;
  double experience;
  double mobile;

  PersonalDetails(
    this.designation,
    this.mobile,
    this.address,
    this.experience,
  );
}
