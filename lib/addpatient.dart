import 'package:flutter/material.dart';  
  
class AddPatient extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    final appTitle = 'Add Patient';  
    return MaterialApp(  
      debugShowCheckedModeBanner: false,
      title: appTitle,  
      home: Scaffold(  
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
        crossAxisAlignment: CrossAxisAlignment.start,  
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
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.number,  
            decoration: const InputDecoration(  
              icon: const Icon(Icons.phone),  
              hintText: 'Enter a phone number',  
              labelText: 'Phone',  
            ),  
          ),  
          TextFormField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.number,  
            decoration: const InputDecoration(  
            icon: const Icon(Icons.calendar_today),  
            hintText: 'Enter your Age',  
            labelText: 'Age',  
            ),  
           ), 
           TextFormField( 
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.name, 
            decoration: const InputDecoration(  
            icon: const Icon(Icons.local_hospital),  
            hintText: '',  
            labelText: 'Disease',  
            ),  
           ), 
           TextFormField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.name,  
            decoration: const InputDecoration(  
            icon: const Icon(Icons.home),  
            hintText: 'Enter your address',  
            labelText: 'Address',  
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
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black87
                ),  
                child: const Text('ADD'),  
                  onPressed: (){},  
              )),  
        ],  
      ),  
    );  
  }  
}  