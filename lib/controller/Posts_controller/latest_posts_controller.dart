import 'package:get/get.dart';

import '../../model/Posts/LatestPostsModel.dart';
import '../../services/post_services/latest_posts_services.dart';

class LatestPostsController extends GetxController {
  final services = LatestPostsServices();
  LatestPostsModel listOfLatestPosts;

  final loading = true.obs;

  @override
  Future<void> onInit() async {
    loading.value = true;
    listOfLatestPosts = await services.getLatestPosts();
    loading.value = false;
  }
}
