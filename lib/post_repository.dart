import 'package:api_calling_using_cubit/post_model.dart';
import 'package:dio/dio.dart';

import 'api.dart';

class PostRepository {

  API api = API();

  Future<List<PostModel>> fetchPosts() async {
    try {
      Response response = await api.sendRequest.get("/posts");
      List<dynamic> postMaps = response.data;
      return postMaps.map((postMap) => PostModel.fromJson(postMap)).toList();
    }
    catch(ex) {
      throw ex;
    }
  }

}