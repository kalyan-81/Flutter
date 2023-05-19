import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Screen2Drawer.dart';

class pdf1 extends StatefulWidget {
  const pdf1({super.key});

  @override
  State<pdf1> createState() => _pdf1State();
}

class _pdf1State extends State<pdf1> {
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  transform: Matrix4.translationValues(-140, -160, 0),
                  child: Image(
                    image: AssetImage('images/Path 20838.png'),
                  ),
                ),
                Container(
                  // width: 100,
                  height: 60,
                  transform: Matrix4.translationValues(150, -90, 0),
                  child: Image(
                    image: AssetImage('images/Polygon 1.png'),
                  ),
                ),
                Container(
                  transform: Matrix4.translationValues(500, 860, 0),
                  child: Container(
                    transform: Matrix4.rotationZ(-3.15),
                    child: Image(image: AssetImage('images/Path 20838.png')),
                  ),
                ),
                Container(
                  transform: Matrix4.translationValues(40, 760, 0),
                  child: Container(
                    // transform: Matrix4.rotationZ(-3.15),
                    child: Image(image: AssetImage('images/Ellipse 10.png')),
                  ),
                ),
                Container(
                  height: 40,
                  transform: Matrix4.translationValues(-20, 670, 0),
                  child: Container(
                    child: Image(image: AssetImage('images/Ellipse 10.png')),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(25),
              padding: EdgeInsets.all(30),
              transform: Matrix4.translationValues(0, -300, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(
                  color: Color(0xff431A80),
                ),
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.file_copy,
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Billing.info.Azure.data.1',
                    style: TextStyle(
                      color: Color(0xff431A80),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.file_download,
                          color: Colors.black,
                        ),
                        label: Text(
                          'Download File',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color(0xff431A80),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(
                    color: Colors.grey[500],
                    thickness: 2,
                  ),
                  SizedBox(height: 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Billing Document Number',
                            style: TextStyle(
                                color: Color(0xff431A80), fontSize: 16),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '0124545789',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Billing Date',
                            style: TextStyle(
                                color: Color(0xff431A80), fontSize: 16),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '07/02/2023',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Created By',
                            style: TextStyle(
                                color: Color(0xff431A80), fontSize: 16),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Veeru',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Azure Link',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'azurelink12345789791afdaf',
                                style: TextStyle(color: Colors.blueAccent),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ODN Number',
                            style: TextStyle(
                                color: Color(0xff431A80), fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '01234545789',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Country Code',
                            style: TextStyle(
                                color: Color(0xff431A80), fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '12345678',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Created At',
                            style: TextStyle(
                                color: Color(0xff431A80), fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Hyderabad',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 70,
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
