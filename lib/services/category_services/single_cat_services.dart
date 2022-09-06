import 'package:saheefa/constants/constants_url.dart';
import 'package:saheefa/model/Categories/SingleCategoryNodel.dart';

import '../../helper/dio_integration.dart';

class SingleCategoryServices {
  final dio = DioUtilNew.dio;
  SingleCategoryModel singleCategoryNodel;

  getOnSingleCat(int id) async {
    try {
      final response = await dio
          .post('${ConstantsURL.singleCategoryURl}', data: {"category_id": id});
      if (response.statusCode == 200) {
        print(response.data);
        singleCategoryNodel = SingleCategoryModel.fromJson(response.data);
      }
    } catch (e) {
      print(e);
    }
  }
}
