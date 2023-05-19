import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
      ),
      child: ListView(
        children: [
          SizedBox(
            child: Center(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.account_circle,
                      color: Color(0xff431A80),
                      size: 55,
                    ),
                    title: Text(
                      'User Name',
                      style: TextStyle(color: Color(0xff431A80), fontSize: 20),
                    ),
                  ),
                  Divider(
                    color: Color(0xff431A80),
                    thickness: 1,
                    indent: 20,
                    endIndent: 40,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.receipt,
                      color: Color(0xff431A80),
                    ),
                    title: Text(
                      'Create Receipt',
                      style: TextStyle(
                        color: Color(0xff431A80),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.inventory_sharp,
                      color: Color.fromARGB(255, 101, 17, 116),
                    ),
                    title: Text(
                      'Invoice Acknowledgement from \nCustomer',
                      style: TextStyle(
                        color: Color(0xff431A80),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.logout_sharp,
                      color: Color(0xff431A80),
                    ),
                    title: Text(
                      'Logout',
                      style: TextStyle(
                        color: Color(0xff431A80),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Stack(
            children: [
              Container(
                height: 250,
                transform: Matrix4.translationValues(-30, -410, 0),
                child: Image(image: AssetImage('images/Path 20838.png')),
              ),
              Container(
                height: 215,
                transform: Matrix4.translationValues(300, 600, 0),
                child: Container(
                  transform: Matrix4.rotationZ(-3.15),
                  child: Image(image: AssetImage('images/Path 20838.png')),
                ),
              ),
              Container(
                height: 30,
                transform: Matrix4.translationValues(160, 410, 0),
                child: Image(image: AssetImage('images/Ellipse 10.png')),
              ),
              Container(
                height: 40,
                transform: Matrix4.translationValues(110, 450, 0),
                child: Image(image: AssetImage('images/Ellipse 10.png')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
