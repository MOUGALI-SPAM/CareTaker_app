class Doctor {
  String name;
  String imageUrl;
  List<PersonalDetails> personaldetails;

  Doctor(this.name, this.imageUrl, this.personaldetails);

  static List<Doctor> doctorPersons = [
    Doctor('DR.MADHAVAN SESHADRI', 'assets/doctor/13.jpeg', [
      PersonalDetails('MBBS MRCPysch', 'Psychiatry', 'Neuropsychiatrist',
          '10:00-11:00', 'Chennai, India')
    ]),
    Doctor('DR. UDAYA SAHOO', 'assets/doctor/14.jpeg', [
      PersonalDetails('MBBS', 'General Medicine', 'Cardiology', '10:00-11:00',
          'Bhubaneswar, India')
    ]),
    Doctor('DR. SUNIL SHROFF', 'assets/doctor/15.jpeg', [
      PersonalDetails('MBBS, FRCS, Dip. Urology, MS', 'Urology',
          'Neuropsychiatrist', '10:00-11:00', 'Chennai, India')
    ]),
    Doctor('DR. SUBRAMANIAN SWAMINATHAN', 'assets/doctor/16.jpeg', [
      PersonalDetails(
          'MD, DNB, ABIM, AB Infectious Diseases',
          'Infectious Diseases',
          'HIV Physician',
          '10:00-11:00',
          'Chennai, India')
    ]),
    Doctor('DR. DEEPAK NALLA', 'assets/doctor/17.jpeg', [
      PersonalDetails(
          'MBBS, MS, Fellowship in Joint Replacement, Fellowship in Arthroscopy and Sports Medicine',
          'Orthopedics',
          'Sports Medicine',
          '10:00-11:00',
          'Coimbatore, India')
    ])
  ];
}

class PersonalDetails {
  String qualification;
  String primarySpecialisation;
  String secondarySpecialisation;
  String location;
  String workingHours;

  PersonalDetails(this.qualification, this.primarySpecialisation,
      this.secondarySpecialisation, this.workingHours, this.location);
}
