import 'package:flutter/material.dart';
import './patient.dart';
import './patient_detail.dart';

class PatientCard extends StatelessWidget {
  const PatientCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 3
    return Center(
      child: Container(
        child: ListView.builder(
          itemCount: Patient.person.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PatientDetail(patient: Patient.person[index]);
                    },
                  ),
                );
              },
              child: buildPersonCard(Patient.person[index]),
            );
          },
        ),
      ),
    );
  }

  Widget buildPersonCard(Patient persons) {
    return Card(
      color: Colors.black87,
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: EdgeInsets.only(top: 20, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(persons.imageUrl),
              maxRadius: 40,
            ),
            Column(
              children: <Widget>[
                const SizedBox(
                  height: 14.0,
                ),
                Text(
                  persons.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Palatino',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Text(
                  '${persons.roomno.round()}',
                  style: const TextStyle(
                    color: Colors.white60,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Palatino',
                  ),
                ),
              ],
            ),
            Icon(Icons.arrow_forward_ios, color: Colors.white)
          ],
        ),
      ),
    );
  }
}
