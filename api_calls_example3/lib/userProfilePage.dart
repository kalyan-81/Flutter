import 'package:api_calls_example3/DartObject.dart';
import 'package:flutter/material.dart';

class UserProfilePage extends StatefulWidget {
  final DartObject? obj1;
  const UserProfilePage({super.key, required this.obj1});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView.builder(
        itemCount: widget.obj1!.perPage,
        itemBuilder: ((Buildcontext, index) {
          return Column(
            children: [
              Text(widget.obj1!.data![index].firstName.toString()),
              Text(widget.obj1!.data![index].lastName.toString()),
              Text(widget.obj1!.data![index].email.toString())
            ],
          );
        }),
      ),
    );
  }
}
