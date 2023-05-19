import 'dart:io';

import 'package:asian_paint_task/dropDown.dart';
import 'package:asian_paint_task/pdf1.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import 'Screen2Drawer.dart';

class Screen7 extends StatefulWidget {
  const Screen7({super.key});

  @override
  State<Screen7> createState() => _Screen7State();
}

class _Screen7State extends State<Screen7> {
  bool edbn = false;
  bool ddfn = false;
  bool cardStatus = false;
  String? dropdownValue;
  GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      drawerScrimColor: Colors.black,

      ///
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xff431A80),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Transform(
              transform: Matrix4.translationValues(-15, 0, 0),
              child: Image(
                width: 45,
                image: AssetImage('images/ap_log.png'),
              ),
            ),
            Text(
              'ACKNOWLEDGEMENTS',
              style: TextStyle(
                  color: Color(0xff431A80), fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.translate,
              size: 15,
            ),
            MouseRegion(
              onHover: (PointerHoverEvent event) {
                // Show popup menu
                final RenderBox box = context.findRenderObject() as RenderBox;
                final Offset offset = box.localToGlobal(event.position);
                showMenu(
                  context: context,
                  position: RelativeRect.fromLTRB(offset.dx, offset.dy, 0, 0),
                  items: <PopupMenuEntry>[
                    PopupMenuItem(
                      child: Text(
                        'English',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff431A80),
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      child: Text(
                        'Item 2',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff431A80),
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      child: Text(
                        'Bahasa',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff431A80),
                        ),
                      ),
                    ),
                  ],
                );
              },
              child: Text(
                'English',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff431A80),
                ),
              ),
            ),
          ],
        ),
      ),
      ///////////////////////
      //extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Column(
                  children: [
                    Stack(
                      children: [
                        Transform(
                          transform: Matrix4.translationValues(-138, -165, 0),
                          child: Image(
                            image: AssetImage('images/Path 20838.png'),
                          ),
                        ),
                        Transform(
                          transform: Matrix4.translationValues(145, -85, 0),
                          child: Image(
                            image: AssetImage('images/Polygon 1.png'),
                            width: 50,
                          ),
                        ),
                        Transform(
                          transform: Matrix4.translationValues(490, 900, 0),
                          child: Transform(
                            transform: Matrix4.rotationZ(-3.15),
                            child: Image(
                              image: AssetImage('images/Path 20838.png'),
                              width: 500,
                            ),
                          ),
                        ),
                        Transform(
                          transform: Matrix4.translationValues(-20, 700, 0),
                          child: Image(
                            image: AssetImage('images/Ellipse 10.png'),
                            width: 45,
                          ),
                        ),
                        // ),
                        Transform(
                          transform: Matrix4.translationValues(80, 750, 0),
                          child: Image(
                            image: AssetImage('images/Ellipse 10.png'),
                            width: 60,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            'Search By',
                            style: TextStyle(
                              color: Color(0xff431A80),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 100,
                        ),

                        Container(
                          padding: EdgeInsets.all(25),
                          width: 410,
                          child: DropdownButtonFormField<String>(
                            alignment: Alignment.centerRight,
                            isDense: true,
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                              color: Color(0xff431A80),
                              size: 35,
                            ),

                            hint: Text('Billing Document Number'),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xff431A80), width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff431A80),
                                ),
                              ),
                              filled: true,
                            ),
                            value: dropdownValue,
                            // Step 4.
                            items: <String>[
                              'Document Number',
                              'Document Date',
                              'Document Created',
                              'ODN Number'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(fontSize: 18),
                                ),
                              );
                            }).toList(),
                            // Step 5.

                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                                if (dropdownValue == "Document Number") {
                                  edbn = true;
                                  ddfn = false;
                                  cardStatus = false;
                                }
                                if (dropdownValue == "Document Date") {
                                  edbn = false;
                                  ddfn = true;
                                  cardStatus = false;
                                }
                              });
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Transform(
              transform: Matrix4.translationValues(2, -200, 0),
              child: Visibility(
                visible: edbn,
                child: Container(
                  // decoration: BoxDecoration(
                  //     border: Border.all(), color: Colors.blue),
                  width: 405,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Billing Document Number',
                        style: TextStyle(color: Color(0xff431A80)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                cardStatus = true;
                              });
                            },
                            icon: Icon(Icons.search),
                          ),
                          suffixIconColor: Color(0xff431A80),
                          hintText: '0124545789',
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xff431A80), width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff431A80),
                            ),
                          ),
                          filled: true,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
// ending search bar for document number

            Transform(
              transform: Matrix4.translationValues(0, -200, 0),
              child: Visibility(
                visible: ddfn,
                child: Container(
                  // width: 500,
                  height: 120,

                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Document Date From',
                            style: TextStyle(color: Color(0xff431A80)),
                          ),
                          Container(
                            width: 150,
                            height: 40,
                            child: TextFormField(
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                hintText: 'mm/dd/yyyy',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff431A80), width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff431A80),
                                  ),
                                ),
                                filled: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Document Date To',
                            style: TextStyle(color: Color(0xff431A80)),
                          ),
                          SizedBox(
                            width: 165,
                            height: 40,
                            child: TextFormField(
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                suffixIcon: Container(
                                  color: Color(0xff431A80),
                                  child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        cardStatus = true;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.search_outlined,
                                    ),
                                  ),
                                ),
                                suffixIconColor:
                                    Color.fromRGBO(255, 255, 255, 1),
                                hintText: 'mm/dd/yyyy',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff431A80), width: 2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff431A80),
                                  ),
                                ),
                                filled: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //container card for visibility
            Visibility(
              visible: cardStatus,
              // child: Container(
              //   color: Colors.blue,
              //   transform: Matrix4.translationValues(-29, -150, 0),
              //   width: 290,
              //   height: 150,
              //   //color: Colors.grey,
              child: Transform(
                transform: Matrix4.translationValues(0, -200, 0),
                child: Card(
                  margin: EdgeInsets.all(25),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Billing Document Number',
                            style: TextStyle(
                              color: Color(0xff431A80),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '01234545678',
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Billing Date',
                            style: TextStyle(
                              color: Color(0xff431A80),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('07/02/2023')
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff431A80),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            height: 140,
                            width: 75,
                            child: IconButton(
                                onPressed: () {
                                  setState(
                                    () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => pdf1(),
                                        ),
                                      );
                                    },
                                  );
                                },
                                icon: Icon(Icons.visibility,
                                    color: Colors.white)),
                            // child: Icon(
                            //   Icons.visibility,
                            //   color: Colors.white,
                            // ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            //),
          ],
        ),
      ),
    );
  }
}
