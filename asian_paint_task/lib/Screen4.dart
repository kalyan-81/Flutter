import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import 'Screen2Drawer.dart';
import 'screen3.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController bdn = TextEditingController();
  TextEditingController bd = TextEditingController();
  TextEditingController odn = TextEditingController();
  TextEditingController cc = TextEditingController();

  File? _image;
  final imagePicker = ImagePicker();

  Future getImage() async {
    final image = await imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = File(image!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: NavBar(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(
              Icons.menu,
              color: Colors.deepPurple,
            ),
          );
        }),
        title: Row(
          children: [
            Image(
              image: AssetImage('images/ap_log.png'),
            ),
            Text(
              'ACKNOWLEDGEMENTS',
              style: TextStyle(
                  color: Color(0xff431A80),
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.translate,
              color: Color(0xff431A80),
            ),
            TextButton(
              onPressed: () {
                showMenu(
                  context: context,
                  position: RelativeRect.fromLTRB(25.0, 25.0, 0.0, 0.0),
                  items: <PopupMenuEntry>[
                    PopupMenuItem(
                      child: Text('English'),
                    ),
                    PopupMenuItem(
                      child: Text('Telugu'),
                    ),
                    PopupMenuItem(
                      child: Text('Bahasa'),
                    ),
                  ],
                );
              },
              child: Text('English',
                  style: TextStyle(
                    color: Color(0xff431A80),
                  )),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        transform: Matrix4.translationValues(-90, -50, 0),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage('images/Path 20838.png'),
                              width: 280,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        transform: Matrix4.translationValues(120, -5, 0),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage('images/Polygon 1.png'),
                              width: 50,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        transform: Matrix4.translationValues(50, 850, 0),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage('images/Ellipse 10.png'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        transform: Matrix4.translationValues(-30, 700, 0),
                        child: Row(
                          children: [
                            Image(
                              image: AssetImage('images/Ellipse 10.png'),
                              width: 50,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        transform: Matrix4.translationValues(460, 950, 0),
                        child: Container(
                          transform: Matrix4.rotationZ(-3.15),
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage('images/Path 20838.png'),
                                width: 280,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    transform: Matrix4.translationValues(0, -100, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {
                            getImage();
                          },
                          child: Column(
                            children: [
                              if (_image != null)
                                SizedBox(
                                  width: 80,
                                  height: 100,
                                  child: Image.file(_image!),
                                ),
                              Icon(
                                Icons.camera_alt,
                                color: Color(
                                  0xff431A80,
                                ),
                              ),
                              Text(
                                'Camera/ QR Code',
                                style: TextStyle(color: Colors.grey[800]),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: Container(
                      transform: Matrix4.translationValues(0, -50, 0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 20)),
                              Text(
                                'Billing Document Number',
                                style: TextStyle(
                                  color: Color(0xff431A80),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 370,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: bdn,
                              decoration: InputDecoration(
                                hintText: '123456789',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff431A80),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff431A80),
                                  ),
                                ),
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(0.5)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(7),
                                  // borderSide: BorderSide(
                                  //     width: 3, color: Colors.greenAccent),
                                ),
                                isDense: true,
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter the Billing Document';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                setState(() {
                                  value = value;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 20)),
                              Text(
                                'Billing Date',
                                style: TextStyle(
                                  color: Color(0xff431A80),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 370,
                            child: TextFormField(
                              keyboardType: TextInputType.datetime,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: bd,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff431A80),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.deepPurple),
                                ),
                                hintText: 'dd/mm/yyyy',
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(0.5)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                isDense: true,
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter the billing date';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                setState(() {
                                  value = value;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 20)),
                              Text(
                                'ODN Number',
                                style: TextStyle(
                                  color: Color(0xff431A80),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 370,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: odn,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff431A80),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff431A80),
                                  ),
                                ),
                                hintText: '0123456789',
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(0.5)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(7),
                                  borderSide: BorderSide(
                                    color: Color(
                                        0xff431A80), // Change this to your desired color
                                  ),
                                ),
                                isDense: true,
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter the odn number';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                setState(() {
                                  value = value;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 20)),
                              Text(
                                'Country Code',
                                style: TextStyle(color: Colors.deepPurple),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 370,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: cc,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.deepPurple),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.deepPurple),
                                ),
                                hintText: '123456789',
                                hintStyle: TextStyle(
                                    color: Colors.grey.withOpacity(0.5)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                isDense: true,
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter the country';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                setState(() {
                                  value = value;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shadowColor: Color.fromARGB(255, 186, 90, 246),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  backgroundColor: Color.fromARGB(255, 72, 41, 129),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print("kalyan");
                    // setState(
                    //  () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Expanded(
                          child: AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            title: Text(
                              'DataSaved Successfully',
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                            content: Icon(
                              Icons.check_circle,
                              size: 40,
                              color: Colors.green,
                            ),
                            actions: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                          ),
                                        ),
                                      ),
                                      backgroundColor: MaterialStatePropertyAll(
                                        Color(0xff431A80),
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(
                                        () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Screen3(),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    child: Text('Close'),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    );
                    // },
                    // );
                  }
                },
                child: Text(
                  'Submit',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
    // Scaffold(
    //     drawer: NavBar(),
    //     drawerScrimColor: Colors.black,

    //     ///
    //     appBar: AppBar(
    //       iconTheme: IconThemeData(
    //         color: Color(0xff431A80),
    //       ),
    //       backgroundColor: Colors.transparent,
    //       elevation: 0.0,
    //       title: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceAround,
    //         children: [
    //           Container(
    //             transform: Matrix4.translationValues(-15, 0, 0),
    //             child: Image(
    //               width: 45,
    //               image: AssetImage('images/ap_log.png'),
    //             ),
    //           ),
    //           Text(
    //             'ACKNOWLEDGEMENTS',
    //             style: TextStyle(
    //                 color: Color(0xff431A80), fontWeight: FontWeight.bold),
    //           ),
    //           SizedBox(
    //             width: 10,
    //           ),
    //           Icon(
    //             Icons.translate,
    //             size: 15,
    //           ),
    //           MouseRegion(
    //             onHover: (PointerHoverEvent event) {
    //               // Show popup menu
    //               final RenderBox box = context.findRenderObject() as RenderBox;
    //               final Offset offset = box.localToGlobal(event.position);
    //               showMenu(
    //                 context: context,
    //                 position: RelativeRect.fromLTRB(offset.dx, offset.dy, 0, 0),
    //                 items: <PopupMenuEntry>[
    //                   PopupMenuItem(
    //                     child: Text(
    //                       'English',
    //                       style: TextStyle(
    //                         fontSize: 12,
    //                         color: Color(0xff431A80),
    //                       ),
    //                     ),
    //                   ),
    //                   PopupMenuItem(
    //                     child: Text(
    //                       'Item 2',
    //                       style: TextStyle(
    //                         fontSize: 12,
    //                         color: Color(0xff431A80),
    //                       ),
    //                     ),
    //                   ),
    //                   PopupMenuItem(
    //                     child: Text(
    //                       'Bahasa',
    //                       style: TextStyle(
    //                         fontSize: 12,
    //                         color: Color(0xff431A80),
    //                       ),
    //                     ),
    //                   ),
    //                 ],
    //               );
    //             },
    //             child: Text(
    //               'English',
    //               style: TextStyle(
    //                 fontSize: 12,
    //                 color: Color(0xff431A80),
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //     ///////////////////////
    //     extendBodyBehindAppBar: true,
    //     body: SingleChildScrollView(
    //       child: Container(
    //         child: Column(
    //           children: [
    //             Stack(
    //               children: [
    //                 Container(
    //                   transform: Matrix4.translationValues(-140, -85, 0),
    //                   child: Image(
    //                     image: AssetImage('images/Path 20838.png'),
    //                   ),
    //                 ),
    //                 Container(
    //                   transform: Matrix4.translationValues(145, -5, 0),
    //                   child: Image(
    //                     image: AssetImage('images/Polygon 1.png'),
    //                     width: 50,
    //                   ),
    //                 ),
    //                 Container(
    //                   transform: Matrix4.translationValues(490, 900, 0),
    //                   child: Container(
    //                     transform: Matrix4.rotationZ(-3.15),
    //                     child: Image(
    //                       image: AssetImage('images/Path 20838.png'),
    //                       width: 500,
    //                     ),
    //                   ),
    //                 ),
    //                 Container(
    //                   transform: Matrix4.translationValues(-20, 700, 0),
    //                   child: Image(
    //                     image: AssetImage('images/Ellipse 10.png'),
    //                     width: 45,
    //                   ),
    //                 ),
    //                 Container(
    //                   transform: Matrix4.translationValues(80, 750, 0),
    //                   child: Image(
    //                     image: AssetImage('images/Ellipse 10.png'),
    //                     width: 60,
    //                   ),
    //                 ),
    //               ],
    //             ),
                // Container(
                //   transform: Matrix4.translationValues(0, -200, 0),
                //   color: Colors.amber,
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.start,
                //     children: [
                //       TextButton(
                //         onPressed: () {
                //           getImage();
                //         },
                //         child: Column(
                //           children: [
                //             SizedBox(
                //               width: 80,
                //               height: 100,
                //               child: _image == null
                //                   ? Text("")
                //                   : Image.file(_image!),
                //             ),
                //             Icon(
                //               Icons.camera_alt,
                //               color: Color(
                //                 0xff431A80,
                //               ),
                //             ),
                //             Text(
                //               'Camera/ QR Code',
                //               style: TextStyle(color: Colors.grey[800]),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
    //             SingleChildScrollView(
    //               child: Column(
    //                 children: [
    //                   Container(
    //                     transform: Matrix4.translationValues(20, -300, 0),
    //                     child: Form(
    //                       key: _formKey,
    //                       child: Center(
    //                         child: Column(
    //                           crossAxisAlignment: CrossAxisAlignment.start,
    //                           children: [
    //                             SizedBox(
    //                               height: 200,
    //                             ),
    //                             Text(
    //                               'Billing Document Number',
    //                               style: TextStyle(
    //                                 color: Color(0xff431A80),
    //                               ),
    //                             ),
    //                             SizedBox(
    //                               height: 10,
    //                             ),
    //                             SizedBox(
    //                               width: 370,
    //                               child: TextFormField(
    //                                 decoration: InputDecoration(
    //                                   //enabled: true,
    //                                   //isDense: true,
    //                                   hintText: '0124545789',
    //                                   focusedBorder: OutlineInputBorder(
    //                                     borderSide: BorderSide(
    //                                       color: Color(0xff431A80),
    //                                     ),
    //                                     borderRadius: BorderRadius.circular(8),
    //                                   ),
    //                                   enabledBorder: OutlineInputBorder(
    //                                     borderSide: BorderSide(
    //                                       color: Color(0xff431A80),
    //                                     ),
    //                                     borderRadius: BorderRadius.circular(8),
    //                                   ),
    //                                   border: OutlineInputBorder(
    //                                     borderSide: BorderSide(
    //                                       color: Color(0xff431A80),
    //                                     ),
    //                                     borderRadius: BorderRadius.circular(8),
    //                                   ),
    //                                 ),
    //                               ),
    //                             ),
    //                             SizedBox(
    //                               height: 5,
    //                             ),
    //                             Text(
    //                               'Billing Date',
    //                               style: TextStyle(
    //                                 color: Color(0xff431A80),
    //                               ),
    //                             ),
    //                             SizedBox(
    //                               height: 5,
    //                             ),
    //                             SizedBox(
    //                               width: 370,
    //                               // height: 40,
    //                               child: TextFormField(
    //                                 decoration: InputDecoration(
    //                                   hintText: 'dd/mm/yyyy',
    //                                   isDense: true,
    //                                   focusedBorder: OutlineInputBorder(
    //                                     borderSide: BorderSide(
    //                                       color: Color(0xff431A80),
    //                                     ),
    //                                     borderRadius: BorderRadius.circular(8),
    //                                   ),
    //                                   enabledBorder: OutlineInputBorder(
    //                                     borderSide: BorderSide(
    //                                       color: Color(0xff431A80),
    //                                     ),
    //                                     borderRadius: BorderRadius.circular(8),
    //                                   ),
    //                                   border: OutlineInputBorder(
    //                                     borderSide: BorderSide(
    //                                       color: Color(0xff431A80),
    //                                     ),
    //                                     borderRadius: BorderRadius.circular(8),
    //                                   ),
    //                                 ),
    //                               ),
    //                             ),
    //                             SizedBox(
    //                               height: 5,
    //                             ),
    //                             Text(
    //                               'ODN Number',
    //                               style: TextStyle(
    //                                 color: Color(0xff431A80),
    //                               ),
    //                             ),
    //                             SizedBox(
    //                               height: 5,
    //                             ),
    //                             SizedBox(
    //                               width: 370,
    //                               // height: 40,
    //                               child: TextFormField(
    //                                 decoration: InputDecoration(
    //                                   hintText: '0124545789',
    //                                   isDense: true,
    //                                   focusedBorder: OutlineInputBorder(
    //                                     borderSide: BorderSide(
    //                                       color: Color(0xff431A80),
    //                                     ),
    //                                     borderRadius: BorderRadius.circular(8),
    //                                   ),
    //                                   enabledBorder: OutlineInputBorder(
    //                                     borderSide: BorderSide(
    //                                       color: Color(0xff431A80),
    //                                     ),
    //                                     borderRadius: BorderRadius.circular(8),
    //                                   ),
    //                                   border: OutlineInputBorder(
    //                                     borderSide: BorderSide(
    //                                       color: Color(0xff431A80),
    //                                     ),
    //                                     borderRadius: BorderRadius.circular(8),
    //                                   ),
    //                                 ),
    //                               ),
    //                             ),
    //                             SizedBox(
    //                               height: 5,
    //                             ),
    //                             Text(
    //                               'Country Code',
    //                               style: TextStyle(
    //                                 color: Color(0xff431A80),
    //                               ),
    //                             ),
    //                             SizedBox(
    //                               height: 5,
    //                             ),
    //                             SizedBox(
    //                               width: 370,
    //                               // height: 40,
    //                               child: TextFormField(
    //                                 decoration: InputDecoration(
    //                                   hintText: '0124545789',
    //                                   isDense: true,
    //                                   focusedBorder: OutlineInputBorder(
    //                                     borderSide: BorderSide(
    //                                       color: Color(0xff431A80),
    //                                     ),
    //                                     borderRadius: BorderRadius.circular(8),
    //                                   ),
    //                                   enabledBorder: OutlineInputBorder(
    //                                     borderSide: BorderSide(
    //                                       color: Color(0xff431A80),
    //                                     ),
    //                                     borderRadius: BorderRadius.circular(8),
    //                                   ),
    //                                   border: OutlineInputBorder(
    //                                     borderSide: BorderSide(
    //                                       color: Color(0xff431A80),
    //                                     ),
    //                                     borderRadius: BorderRadius.circular(8),
    //                                   ),
    //                                 ),
    //                               ),
    //                             ),
    //                             SizedBox(
    //                               height: 0,
    //                             ),
                        //         Center(
                        //           child: ElevatedButton(
                        //             style: ElevatedButton.styleFrom(
                        //               elevation: 0,
                        //               shadowColor:
                        //                   Color.fromARGB(255, 186, 90, 246),
                        //               padding: EdgeInsets.symmetric(
                        //                   horizontal: 50, vertical: 15),
                        //               shape: RoundedRectangleBorder(
                        //                 borderRadius: BorderRadius.all(
                        //                   Radius.circular(30),
                        //                 ),
                        //               ),
                        //               backgroundColor:
                        //                   Color.fromARGB(255, 72, 41, 129),
                        //             ),
                        //             onPressed: () {
                        //               setState(() {
                        //                 showDialog(
                        //                   context: context,
                        //                   builder: (BuildContext context) {
                        //                     return Expanded(
                        //                       child: AlertDialog(
                        //                         shape: RoundedRectangleBorder(
                        //                             borderRadius:
                        //                                 BorderRadius.all(
                        //                                     Radius.circular(
                        //                                         20))),
                        //                         title: Text(
                        //                           'DataSaved Successfully',
                        //                           style: TextStyle(
                        //                               color: Colors.grey[600]),
                        //                         ),
                        //                         content: Icon(
                        //                           // shadows: [
                        //                           //   BoxShadow(
                        //                           //       spreadRadius: 30,
                        //                           //       blurRadius: 8,
                        //                           //       color: Colors.green),
                        //                           // ],
                        //                           Icons.check_circle,
                        //                           size: 40,
                        //                           color: Colors.green,
                        //                         ),
                        //                         actions: [
                        //                           Column(
                        //                             crossAxisAlignment:
                        //                                 CrossAxisAlignment
                        //                                     .stretch,
                        //                             children: [
                        //                               Container(
                        //                                 child: ElevatedButton(
                        //                                   style: ButtonStyle(
                        //                                       backgroundColor:
                        //                                           MaterialStatePropertyAll(
                        //                                               Color(
                        //                                                   0xff431A80))),
                        //                                   onPressed: () {
                        //                                     setState(() {
                        //                                       Navigator.push(
                        //                                           context,
                        //                                           MaterialPageRoute(
                        //                                               builder:
                        //                                                   (context) =>
                        //                                                       Screen3()));
                        //                                     });
                        //                                   },
                        //                                   child: Text('Close'),
                        //                                 ),
                        //                               ),
                        //                             ],
                        //                           )
                        //                         ],
                        //                       ),
                        //                     );
                        //                   },
                        //                 );
                        //               },);
                        //             },
                        //             child: Text(
                        //               'Submit',
                        //               style: TextStyle(fontSize: 18),
                        //             ),
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
    //                   ),
    //                 ],
    //               ),
    //             )
    //           ],
    //         ),
    //       ),
    //     ));
//   }
// }
