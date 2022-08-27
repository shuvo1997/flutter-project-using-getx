import 'package:flutter/cupertino.dart';
import 'package:myproject/models/post.dart';
import 'package:myproject/repository/post_repository.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

class HttpPostRepositoryImpl implements PostRepository {
  @override
  Future<Post> fetchPost() async {
    // TODO: implement fetchPostList
    throw UnimplementedError();
  }

  @override
  Future<List<Post>> fetchPostList() async {
    var response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return postFromJson(jsonString);
    } else {
      throw Exception('Exception in fetchPostList');
    }
  }
}

class DioPostRepositoryImpl implements PostRepository {
  late final Dio _dio;
  DioPostRepositoryImpl() {
    _dio = Dio();
  }
  @override
  Future<Post> fetchPost() async {
    var response =
        await _dio.get('https://jsonplaceholder.typicode.com/posts/1');
    if (response.statusCode == 200) {
      return Post.fromJson(response.data);
    } else {
      throw Exception('Exception in dio post repo');
    }
  }

  @override
  Future<List<Post>> fetchPostList() async {
    try {
      final response =
          await _dio.get('https://jsonplaceholder.typicode.com/posts');
      var posts = response.data;
      List<Post> listPosts = [];
      for (var post in posts) {
        listPosts.add(Post.fromJson(post));
      }
      return listPosts;
    } on DioError catch (e) {
      debugPrint(e.stackTrace.toString());
      throw Exception('Error in list posts');
    }
  }
}
