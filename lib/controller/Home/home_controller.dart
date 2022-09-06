import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:saheefa/model/Categories/AllCategoryModel.dart';
import 'package:saheefa/model/Categories/SingleCategoryNodel.dart';
import 'package:saheefa/model/Posts/LatestPostsModel.dart';
import 'package:saheefa/model/Posts/MostSeenPostsModel.dart';
import 'package:saheefa/model/Posts/SinglePostModel.dart';
import 'package:saheefa/services/post_services/latest_posts_services.dart';

class HomeController extends GetxController {
  final _servicesLatestPostsServices = LatestPostsServices();
  MostSeenPostsModel mostSeenPostsModel;
  LatestPostsModel latestPostsModel;
  SinglePostModel singlePostsModel;
  AllCategoryModel allCategoryModel;
  SingleCategoryModel singleCategoryModel;

  final loading = true.obs;
  final loadingCategory = false.obs;
  final value = 0.obs;
  final time = ''.obs;
  final id = 0.obs;

  selectCategory(int index) {
    value.value = index;
    print(value.value);
  }

  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    super.onInit();
    loading.value = true;
    mostSeenPostsModel = await _servicesLatestPostsServices.getMostSeenPosts();
    latestPostsModel = await _servicesLatestPostsServices.getLatestPosts();
    allCategoryModel = await _servicesLatestPostsServices.getAllCategory();
    id.value = allCategoryModel.data.first.termId;
    singleCategoryModel =
        await _servicesLatestPostsServices.getOnSingleCat(id.value);
    convertTime();
    print("MostSeenPostsModel");
    loading.value = false;
  }

  String removeAllHtmlTags(String htmlText) {
    RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);
    String result = htmlText.replaceAll(exp, '');
    print(result);
    return result;
  }

  convertTime() {
    DateTime dateTime = DateTime.now();
    time.value = DateFormat('hh:mm a').format(dateTime);
    print("DateTime");
    print(time.value);
  }

  getSinglePost(int id) async {
    singlePostsModel = await _servicesLatestPostsServices.getOnSinglePost(id);
  }

  getCategory(int id) async {
    loadingCategory.value = true;
    singleCategoryModel =
        await _servicesLatestPostsServices.getOnSingleCat(id);
    loadingCategory.value = false;
  }
}
