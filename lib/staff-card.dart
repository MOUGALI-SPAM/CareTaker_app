import 'package:flutter/material.dart';
import './staff.dart';
import './staff-detail.dart';

class StaffCard extends StatelessWidget {
  const StaffCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ListView.builder(
          itemCount: Staff.staffPersons.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return StaffDetail(staff: Staff.staffPersons[index]);
                    },
                  ),
                );
              },
              child: buildPersonCard(Staff.staffPersons[index]),
            );
          },
        ),
      ),
    );
  }

  Widget buildPersonCard(Staff staffPersons) {
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
              backgroundImage: AssetImage(staffPersons.imageUrl),
              maxRadius: 28,
            ),
            Column(
              children: <Widget>[
                const SizedBox(
                  height: 12.0,
                ),
                Text(
                  staffPersons.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Palatino',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
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
