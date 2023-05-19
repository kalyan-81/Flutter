import 'dart:math';

import 'package:asian_paint_task/Screen4.dart';

import 'package:asian_paint_task/Screen7.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Screen2Drawer.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
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
      body: Container(
        // width: MediaQuery.of(context).size.width * 1,
        // height: MediaQuery.of(context).size.height * 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  transform: Matrix4.translationValues(-140, -200, 0),
                  child: Image(
                    image: AssetImage('images/Path 20838.png'),
                  ),
                ),
                Container(
                  // width: 100,
                  height: 60,
                  transform: Matrix4.translationValues(150, -125, 0),
                  child: Image(
                    image: AssetImage('images/Polygon 1.png'),
                  ),
                ),
                Container(
                  transform: Matrix4.translationValues(500, 850, 0),
                  child: Container(
                    transform: Matrix4.rotationZ(-3.15),
                    child: Image(image: AssetImage('images/Path 20838.png')),
                  ),
                ),
                Container(
                  transform: Matrix4.translationValues(40, 750, 0),
                  child: Container(
                    // transform: Matrix4.rotationZ(-3.15),
                    child: Image(image: AssetImage('images/Ellipse 10.png')),
                  ),
                ),
                Container(
                  height: 40,
                  transform: Matrix4.translationValues(-20, 650, 0),
                  child: Container(
                    child: Image(image: AssetImage('images/Ellipse 10.png')),
                  ),
                ),
              ],
            ),
            Container(
              transform: Matrix4.translationValues(0, -200, 0),
              width: 200,
              height: 200,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Screen4();
                  }));
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 20.0,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('images/store-svgrepo-com.jpg'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Store',
                          style: TextStyle(
                              color: Color(0xff431A80),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              transform: Matrix4.translationValues(0, -200, 0),
              width: 200,
              height: 200,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Screen7();
                  }));
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  elevation: 20.0,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage(
                              'images/documents-folder-svgrepo-com.jpg'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Retrieve',
                          style: TextStyle(
                              color: Color(0xff431A80),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
