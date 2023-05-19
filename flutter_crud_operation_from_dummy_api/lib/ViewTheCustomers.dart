import 'package:flutter/material.dart';
import 'package:flutter_crud_operation_from_dummy_api/post.dart';

import 'post_repo.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ViewCustomers(),
    );
  }
}

class ViewCustomers extends StatefulWidget {
  @override
  State<ViewCustomers> createState() => _ViewCustomersState();
}

class _ViewCustomersState extends State<ViewCustomers> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future<Post> futurePost = PostRepository().getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('test'),
      ),
      body: FutureBuilder<Post>(
        future: PostRepository().getPosts(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
          } else if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(snapshot.data![index].title.toString()),
                subtitle: Text(
                  snapshot.data![index].body.toString(),
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
