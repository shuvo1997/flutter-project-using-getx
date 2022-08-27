import 'package:get/get.dart';
import 'package:myproject/models/post.dart';
import 'package:myproject/repository/post_repository_impl.dart';

import '../../../../repository/post_repository.dart';

class FetchListController extends GetxController {
  var isLoading = true.obs;
  var postList = <Post>[].obs;
  var post = Post(userId: 1, id: 1, title: 'Hello', body: 'Hi').obs;
  PostRepository httpPostRepository = HttpPostRepositoryImpl();
  PostRepository dioPostRepository = DioPostRepositoryImpl();

  @override
  void onInit() {
    fetchPostList();
    // fetchPost();
    super.onInit();
  }

  void fetchPostList() async {
    // var posts = await httpPostRepository.fetchPostList();
    var posts = await dioPostRepository.fetchPostList();
    postList.value = posts;
    isLoading(false);
  }

  void fetchPost() async {
    var singlePost = await dioPostRepository.fetchPost();
    post.value = singlePost;
  }
}
