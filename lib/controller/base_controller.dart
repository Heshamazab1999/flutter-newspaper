import 'package:get/get.dart';

class BaseController extends GetxController {
  final _index = 0.obs;

  int get index => _index.value;

  selectItem(int index) => _index.value = index;
}
