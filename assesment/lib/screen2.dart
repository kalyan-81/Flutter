import 'package:assesment/main.dart';
import 'package:flutter/material.dart';

class SubmittedDetails extends StatelessWidget {
  String? firstName;
  String? lastName;
  String? gender;
  String? phoneNumber;
  String? emailAddress;
  SubmittedDetails(
      {required this.firstName,
      this.lastName,
      required this.emailAddress,
      required this.gender,
      required this.phoneNumber,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        title: Text(
          'General Details',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => General_Details(),
              ),
            );
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(50),
          ),
        ),
      ),
      body: Container(
        height: 300,
        padding: EdgeInsets.all(20),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Text('First Name'),
                  SizedBox(
                    width: 90,
                  ),
                  Text('Last Name'),
                ],
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    '$firstName',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 115,
                  ),
                  Text(
                    '$lastName',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Text('Gender'),
                  SizedBox(
                    width: 110,
                  ),
                  Text('Phone Number'),
                ],
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    '$gender',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Text(
                    '$phoneNumber',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),

              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Text('Email Address'),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    '$emailAddress',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              // Row(
              //   children: [
              //     Column(
              //       children: [
              //         Text('Email Address'),
              //         Text(
              //           '$emailAddress',
              //           style: TextStyle(fontWeight: FontWeight.bold),
              //         ),
              //       ],
              //     )
              //   ],
              // ),
              Divider(
                thickness: 1.0,
                color: Color.fromARGB(255, 26, 24, 24),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton.icon(
                      onPressed: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => General_Details(),
                          ),
                        );
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => EditScreen(
                        //       firstName: firstName,
                        //       lastName: lastName,
                        //       gender: gender,
                        //       emailAddress: emailAddress,
                        //       phoneNumber: phoneNumber,
                        //     ),
                        //   ),
                        // );
                      },
                      icon: Icon(Icons.edit, color: Colors.green),
                      label: Text(
                        'Edit',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
