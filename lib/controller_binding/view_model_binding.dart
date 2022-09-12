import 'package:get/get.dart';
import 'package:saheefa/controller/Auth_controller/auth_controller.dart';
import 'package:saheefa/controller/Home/home_controller.dart';
import 'package:saheefa/controller/Posts_controller/latest_posts_controller.dart';
import 'package:saheefa/controller/base_controller.dart';
import 'package:saheefa/controller/category_controller.dart';
import 'package:saheefa/controller/profile_controller.dart';
import 'package:saheefa/helper/connection.dart';

class ViewModelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Connection>(() => Connection(), fenix: true);
    Get.lazyPut<BaseController>(() => BaseController(), fenix: true);
    Get.lazyPut<AuthController>(() => AuthController(), fenix: true);
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
    Get.lazyPut<ProfileController>(() => ProfileController(), fenix: true);
    Get.lazyPut<CategoriesController>(() => CategoriesController(),
        fenix: true);
    // Get.lazyPut<BmiController>(() => BmiController(), fenix: true);
    // Get.lazyPut<VitalController>(() => VitalController(), fenix: true);
    // Get.lazyPut<BookingDoctorController>(() => BookingDoctorController(),
    //     fenix: true);
    // Get.lazyPut<HealthMonitoringController>(() => HealthMonitoringController(),
    //     fenix: true);
    // Get.lazyPut<MyDoctorController>(() => MyDoctorController(), fenix: true);
  }
}
