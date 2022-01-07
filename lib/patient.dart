class Patient {
  String name;
  String imageUrl;
  double roomno;
  List<PersonalDetails> personaldetails;

  Patient(
    this.name,
    this.imageUrl,
    this.roomno,
    this.personaldetails,
  );

  static List<Patient> person = [
    Patient(
      'Mike',
      'assets/patient/1.jpeg',
      101,
      [PersonalDetails('11-DQ Street Venue, Surat', 'M', 20, 'Dengue', 3, 5)],
    ),
    Patient(
      'Max',
      'assets/patient/2.jpeg',
      102,
      [PersonalDetails('21-DQ Park Avenue, Surat', 'M', 22, 'Malaria', 4, 2)],
    ),
    Patient(
      'Fred',
      'assets/patient/3.jpeg',
      103,
      [PersonalDetails('12-DQ Street Venue, Surat', 'M', 11, 'Cholera', 2, 2)],
    ),
    Patient(
      'Happy',
      'assets/patient/4.jpeg',
      104,
      [PersonalDetails('21-DQ Park Avenue, Surat', 'F', 23, 'Typhoid', 1, 2)],
    ),
    Patient(
      'Drako',
      'assets/patient/5.jpeg',
      105,
      [PersonalDetails('122-AQ Street Venue, Surat', 'M', 26, 'Covid', 5, 3)],
    ),
  ];
}

class PersonalDetails {
  final String address;
  final String sex;
  final double age;
  double numberOfInjections;
  final String disease;
  double numberOfGlucoseBottles;

  PersonalDetails(
    this.address,
    this.sex,
    this.age,
    this.disease,
    this.numberOfGlucoseBottles,
    this.numberOfInjections,
  );
}
