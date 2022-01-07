import 'package:flutter/material.dart';
import './patientLoggedInPage.dart';

class PatientLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Welcome!';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        backgroundColor: Colors.orange[50],
        appBar: AppBar(
          title: Text(
            appTitle,
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.orange[50],
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.name,
            decoration: const InputDecoration(
              icon: const Icon(Icons.person),
              hintText: 'Enter your name',
              labelText: 'Name',
            ),
          ),
          TextFormField(
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              icon: const Icon(Icons.meeting_room),
              hintText: 'Enter your room no:',
              labelText: 'Room No',
            ),
          ),
          new Container(
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),
              child: new ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.black87),
                child: const Text('LOG IN'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PatientLoggedInPage()),
                  );
                },
              )),
        ],
      ),
    );
  }
}
