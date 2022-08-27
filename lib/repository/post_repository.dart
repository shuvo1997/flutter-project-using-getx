import '../models/post.dart';

abstract class PostRepository {
  Future<Post> fetchPost();
  Future<List<Post>> fetchPostList();
}
