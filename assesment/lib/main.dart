// ignore_for_file: camel_case_types

import 'package:assesment/screen2.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: General_Details(),
    );
  }
}

class General_Details extends StatefulWidget {
  const General_Details({super.key});

  @override
  State<General_Details> createState() => _General_DetailsState();
}

class _General_DetailsState extends State<General_Details> {
  var _formKey = GlobalKey<FormState>();

  late String firstName;
  late String lastName = '';
  late String gender;
  late String phoneNumber;
  late String emailAddress;

  String? _gender;

  // TextEditingController fnController = TextEditingController();
  // TextEditingController lnController = TextEditingController();
  // // TextEditingController gnController = TextEditingController();
  // TextEditingController pnController = TextEditingController();
  // TextEditingController emController = TextEditingController();
  // SingleValueDropDownController gnController = SingleValueDropDownController();

  var isLoading = false;

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    setState(() {});
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'General Details',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(50),
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 235, 236, 238),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: 'First Name',
                      style: TextStyle(color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                          text: '*',
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    // controller: fnController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your first name';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      firstName = value!;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Last Name',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    // controller: lnController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onSaved: (value) {
                      lastName = value!;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Gender',
                      style: TextStyle(color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                          text: '*',
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Container(
                    child: Column(
                      children: <Widget>[
                        DropdownButtonFormField<String>(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                          value: _gender,
                          items: ['Male', 'Female']
                              .map((gender) => DropdownMenuItem<String>(
                                    value: gender,
                                    child: Text(gender),
                                  ))
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              _gender = value!;
                            });
                          },
                          validator: (value) {
                            if (value == null) {
                              return 'Please select your gender';
                            }

                            return null;
                          },
                          onSaved: (value) {
                            gender = value!;
                          },
                        ),
                      ],
                    ),
                  ),

                  // DropDownTextField(
                  //   controller: gnController,
                  //   textFieldDecoration: InputDecoration(
                  //       border: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(10))),
                  //   dropDownList: [
                  //     DropDownValueModel(name: 'Male', value: "Male"),
                  //     DropDownValueModel(name: 'Female', value: "Female"),
                  //   ],
                  // ),
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Phone Number',
                      style: TextStyle(color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                          text: '*',
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    // controller: pnController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your mobile number';
                      }
                      if (!RegExp(r"^[0-9]{10}$").hasMatch(value)) {
                        return 'Please enter a valid 10-digit mobile number';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      phoneNumber = value!;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Email Address',
                      style: TextStyle(color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                          text: '*',
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    // controller: emController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email address';
                      }
                      if (!RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      emailAddress = value!;
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadiusDirectional.only(
            topStart: Radius.circular(20),
            topEnd: Radius.circular(20),
          ),
        ),
        child: Material(
          color: Color.fromARGB(255, 13, 2, 66),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: InkWell(
            onTap: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // Doing something with the form data
                setState(() {
                  // firstName = fnController.text;
                  // lastName = lnController.text;
                  // gender = gnController.dropDownValue.toString();
                  // phoneNumber = pnController.text;
                  // emailAddress = emController.text;

                  // print(lastName);
                  // print(gender);
                  // print(emailAddress);
                  // print(phoneNumber);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SubmittedDetails(
                        firstName: firstName,
                        lastName: lastName,
                        emailAddress: emailAddress,
                        gender: gender,
                        phoneNumber: phoneNumber,
                      ),
                    ),
                  );
                });
              }
            },
            child: const SizedBox(
              height: kToolbarHeight,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
