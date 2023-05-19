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
      home: clientForm(),
    );
  }
}

class clientForm extends StatefulWidget {
  const clientForm({super.key});

  @override
  State<clientForm> createState() => _clientFormState();
}

class _clientFormState extends State<clientForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
        ),
        backgroundColor: Colors.white,
        title: Text('TimeSheets',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
        leading: IconButton(
          onPressed: null,
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: inputForm(),
    );
  }
}

class inputForm extends StatefulWidget {
  @override
  State<inputForm> createState() => _inputFormState();
}

class _inputFormState extends State<inputForm> {
  final TextEditingController _cncontroller = TextEditingController();
  final TextEditingController _ecncontroller = TextEditingController();
  String firstData = '';
  String secondData = '';
  bool isContainer = false;
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Form(
        key: _formkey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: _cncontroller,
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.star,
                  color: Colors.red,
                ),
                hintText: 'Insight Global',
                label: Text(
                  'Client Name',
                  softWrap: false,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'please Enter some text';
                } else
                  firstData = value;
              },
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: _ecncontroller,
              decoration: InputDecoration(
                hintText: 'Insight Global',
                label: Text('EndClient Name'),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'please Enter some text';
                } else
                  secondData = value;
              },
            ),
            Row(),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isContainer = true;
                });
              },
              child: Text('Submit'),
            ),
            Visibility(
              visible: isContainer,
              child: Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      _cncontroller.text,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      _ecncontroller.text,
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
