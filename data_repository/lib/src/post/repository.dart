import '../../data_repository.dart';
import 'api.dart';
import '../model/post.dart';
import 'package:http/http.dart';
// not works yet
class PostRepository {
  final PostApi postApi;

  PostRepository(this.postApi);
  Future<Post> getPostList() {
   return postApi.getPostList();
  }
}