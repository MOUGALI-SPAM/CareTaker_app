import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './patient.dart';

class PatientDetail extends StatefulWidget {
  final Patient patient;

  const PatientDetail({
    Key? key,
    required this.patient,
  }) : super(key: key);

  @override
  _PatientDetailState createState() {
    return _PatientDetailState();
  }
}

class _PatientDetailState extends State<PatientDetail> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orange[50],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(6.0),
                  child: Container(
                    padding: EdgeInsets.all(15),
                    width: MediaQuery.of(context).size.width - 45,
                    height: 350,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(widget.patient.imageUrl),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          widget.patient.name,
                          style: GoogleFonts.itim(
                              fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '${widget.patient.roomno.round()}',
                          style: GoogleFonts.itim(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.only(top: 2),
                    itemCount: widget.patient.personaldetails.length,
                    itemBuilder: (BuildContext context, int index) {
                      final personaldetail =
                          widget.patient.personaldetails[index];
                      return SizedBox(
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                'Age: ${personaldetail.age.round()}',
                                style: GoogleFonts.rosario(
                                    fontSize: 27,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87),
                              ),
                              Padding(padding: EdgeInsets.only(top: 10)),
                              Text(
                                'Add: ${personaldetail.address}\n',
                                style: GoogleFonts.rufina(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.black54),
                              ),
                              Text(
                                'Sex: ${personaldetail.sex}\n',
                                style: GoogleFonts.rosario(
                                    fontSize: 23,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.black45),
                              ),
                              Text(
                                'Disease: ${personaldetail.disease.toUpperCase()}',
                                style: GoogleFonts.rosario(
                                    fontSize: 27,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black87),
                              ),
                              Text(
                                'Injections/day: ${personaldetail.numberOfInjections.round()}',
                                style: GoogleFonts.rosario(
                                    fontSize: 27,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87),
                              ),
                              Text(
                                'Glucose/day: ${personaldetail.numberOfGlucoseBottles.round()}',
                                style: GoogleFonts.rosario(
                                    fontSize: 27,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
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
