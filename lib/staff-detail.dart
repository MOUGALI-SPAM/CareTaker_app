import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './staff.dart';

class StaffDetail extends StatefulWidget {
  final Staff staff;

  const StaffDetail({
    Key? key,
    required this.staff,
  }) : super(key: key);

  @override
  _StaffDetailState createState() {
    return _StaffDetailState();
  }
}

class _StaffDetailState extends State<StaffDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(6.0),
                child: Container(
                  padding: EdgeInsets.all(17),
                  width: MediaQuery.of(context).size.width - 45,
                  height: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(widget.staff.imageUrl),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 18)),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.staff.name,
                  style: GoogleFonts.itim(
                      fontSize: 45, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.only(top: 7),
                  itemCount: widget.staff.personaldetails.length,
                  itemBuilder: (BuildContext context, int index) {
                    final personaldetail = widget.staff.personaldetails[index];
                    return SizedBox(
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '${personaldetail.designation}',
                              style: GoogleFonts.rosario(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87),
                            ),
                          ),
                          const Padding(padding: const EdgeInsets.only(top: 8)),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Number: ${personaldetail.mobile.round()}\n',
                              style: GoogleFonts.rufina(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.black54),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Add: ${personaldetail.address}\n',
                              style: GoogleFonts.rosario(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.black45),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Experience: ${personaldetail.experience.round()} Years\n',
                              style: GoogleFonts.roboto(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          Table(
                            border: TableBorder.all(),
                            children: [
                              TableRow(children: [
                                Column(children: [
                                  Icon(Icons.track_changes_outlined),
                                  Text('Coordination')
                                ]),
                                Column(children: [
                                  Icon(
                                    Icons.settings,
                                  ),
                                  Text('Settings')
                                ]),
                                Column(children: [
                                  Icon(Icons.lightbulb_outline),
                                  Text('Ideas')
                                ]),
                              ]),
                              TableRow(children: [
                                Icon(
                                  Icons.cake,
                                ),
                                Icon(
                                  Icons.voice_chat,
                                ),
                                Icon(
                                  Icons.add_location,
                                ),
                              ]),
                            ],
                          )
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
