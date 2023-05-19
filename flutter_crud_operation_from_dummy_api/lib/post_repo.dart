import 'dart:convert';

import 'package:flutter_crud_operation_from_dummy_api/post.dart';
import 'package:http/http.dart' as http;

class PostRepository {
  var url = 'https://jsonplaceholder.typicode.com/posts';
  Future<Post> getPosts() async {
    final response = await http.get(Uri.parse(url));

    return Post.fromJson(jsonDecode(response.body));
  }
}
