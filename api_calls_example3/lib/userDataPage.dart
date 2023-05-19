import 'package:api_calls_example3/DartObject.dart';
import 'package:flutter/material.dart';

class UserDataPage extends StatefulWidget {
  final DartObject? obj1;
  const UserDataPage({super.key, required this.obj1});

  @override
  State<UserDataPage> createState() => _UserDataPageState();
}

class _UserDataPageState extends State<UserDataPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: ListView.builder(
      itemCount: widget.obj1!.perPage,
      itemBuilder: ((BuildContext contex, index) {
        String fname = widget.obj1!.data![index].firstName.toString();
        String lname = widget.obj1!.data![index].lastName.toString();
        String email = widget.obj1!.data![index].email.toString();
        String imgsrc = widget.obj1!.data![index].avatar.toString();
        return Container(
            child: Column(
          children: <Row>[
            Row(
              children: [
                Image.network(imgsrc),
                Text('$fname'),
                Text('$lname'),
                Text('$email')
              ],
            ),
          ],
        ));
      }),
    ));
  }
}
