import 'dart:convert';
import '../model/post.dart';
import 'package:http/http.dart' as http;

class PostApi {
  Future<Post> getPostList() async {
    final response = await http.get('http://127.0.0.1:8000/api/public-articles');
    return Post.fromJson(json.decode(response.body));
  }
}