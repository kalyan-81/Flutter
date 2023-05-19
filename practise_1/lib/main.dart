import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _count = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text('Flutter Scaffold Example'),
      ),
      body: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.redAccent,
            ),
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.amberAccent,
          ),
          Positioned(
            //<-- SEE HERE
            right: 20,
            top: 100,
            child: Container(
              width: 230,
              height: 230,
              color: Colors.deepPurpleAccent,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _count++;
        }),
        tooltip: 'Increment Counter',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      drawer: Drawer(
        elevation: 20.0,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("javatpoint"),
              accountEmail: Text("javatpoint@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Text("abc"),
              ),
            ),
            ListTile(
              title: new Text("Inbox"),
              leading: new Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
              color: Colors.black,
            ),
            ListTile(
              title: new Text("Primary"),
              leading: new Icon(Icons.inbox),
            ),
            Divider(
              height: 0.1,
              color: Colors.black,
            ),
            ListTile(
              title: new Text("Social"),
              leading: new Icon(Icons.people),
            ),
            Divider(
              height: 0.1,
              color: Colors.black,
            ),
            ListTile(
              title: new Text("Promotions"),
              leading: new Icon(Icons.local_offer),
            )
          ],
        ),
      ),
    );
  }
}
