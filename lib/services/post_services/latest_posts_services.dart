import 'package:dio/dio.dart';
import 'package:saheefa/model/Categories/AllCategoryModel.dart';
import 'package:saheefa/model/Categories/SingleCategoryNodel.dart';
import 'package:saheefa/model/Posts/MostSeenPostsModel.dart';
import 'package:saheefa/model/Posts/SinglePostModel.dart';

import '../../constants/constants_url.dart';
import '../../helper/cache_helper.dart';
import '../../helper/dio_integration.dart';
import '../../model/Posts/LatestPostsModel.dart';

class LatestPostsServices {
  final dio = DioUtilNew.dio;
  LatestPostsModel latestPostsModel;
  MostSeenPostsModel mostSeenPostsModel;
  AllCategoryModel allCategoryModel;
  SinglePostModel singlePostModel;
  SingleCategoryModel singleCategoryModel;

  getLatestPosts() async {
    final res = await dio.get(
      ConstantsURL.latestPostsURl,
    );
    if (res.statusCode == 200) {
      print(res.data);
      latestPostsModel = LatestPostsModel.fromJson(res.data);
      return latestPostsModel;
    }
  }

  getMostSeenPosts() async {
    try {
      final response = await dio.get(ConstantsURL.mostSeenPostsURl);
      if (response.statusCode == 200) {
        print(response.data);
        mostSeenPostsModel = MostSeenPostsModel.fromJson(response.data);
        return mostSeenPostsModel;
      }
    } catch (e) {}
  }

  getAllCategory() async {
    try {
      final response = await dio.get('${ConstantsURL.allCategoriesURl}');
      if (response.statusCode == 200) {
        print(response.data);
        allCategoryModel = AllCategoryModel.fromJson(response.data);
        return allCategoryModel;
      }
    } catch (e) {}
  }

  getOnSinglePost(int id) async {
    print(id);
    try {
      final response = await dio.post(
          'https://www.kabrday.com/api/public/api/post/single-post',
          queryParameters: {"post_id": id});
      if (response.statusCode == 200) {
        print(response.data);
        singlePostModel = SinglePostModel.fromJson(response.data);
        print(singlePostModel.toJson());
        return singlePostModel;
      }
    } catch (e) {
      print(e);
    }
  }

  getOnSingleCat(int id) async {
    try {
      final response = await dio
          .post('${ConstantsURL.singleCategoryURl}', data: {"category_id": id});
      if (response.statusCode == 200) {
        print(response.data);
        singleCategoryModel = SingleCategoryModel.fromJson(response.data);
        return singleCategoryModel;
      }
    } catch (e) {
      print(e);
    }
  }
}
