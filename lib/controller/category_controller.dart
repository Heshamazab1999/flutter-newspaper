import 'package:get/get.dart';
import 'package:saheefa/controller/base_controller.dart';
import 'package:saheefa/model/Categories/AllCategoryModel.dart';
import 'package:saheefa/model/Categories/SingleCategoryNodel.dart';
import 'package:saheefa/services/post_services/latest_posts_services.dart';

class CategoriesController extends BaseController {
  final _services = LatestPostsServices();
  AllCategoryModel allCategoryModel;
  SingleCategoryModel singleCategoryModel;

  final value = 0.obs;
  final _loading = false.obs;

  bool get loading => _loading.value;

  selectCategory(int index) {
    value.value = index;
    print(value.value);
  }

  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    super.onInit();
    _loading.value = true;
    allCategoryModel = await _services.getAllCategory();
    _loading.value = false;
  }

  getCategory(int id) async {
    singleCategoryModel = await _services.getOnSingleCat(id);
  }
}
