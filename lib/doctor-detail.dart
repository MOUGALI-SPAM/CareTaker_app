import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './doctor.dart';

class DoctorDetail extends StatefulWidget {
  final Doctor doctor;

  const DoctorDetail({
    Key? key,
    required this.doctor,
  }) : super(key: key);

  @override
  _DoctorDetailState createState() {
    return _DoctorDetailState();
  }
}

class _DoctorDetailState extends State<DoctorDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
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
                      image: AssetImage(widget.doctor.imageUrl),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 18)),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.doctor.name,
                  style: GoogleFonts.itim(
                      fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.only(top: 5),
                  itemCount: widget.doctor.personaldetails.length,
                  itemBuilder: (BuildContext context, int index) {
                    final personaldetail = widget.doctor.personaldetails[index];
                    return SizedBox(
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${personaldetail.primarySpecialisation}',
                              style: GoogleFonts.rosario(
                                  fontSize: 27,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87),
                            ),
                          ),
                          const Padding(
                              padding: const EdgeInsets.only(top: 10)),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Qualification: ${personaldetail.qualification}\n',
                              style: GoogleFonts.rufina(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.black54),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Secondary Speciality: ${personaldetail.secondarySpecialisation}\n',
                              style: GoogleFonts.rosario(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.black45),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Working Hours: ${personaldetail.workingHours}\n',
                              style: GoogleFonts.roboto(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
