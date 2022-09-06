import 'package:get/get.dart';
import 'package:saheefa/controller/Home/home_controller.dart';
import 'package:saheefa/controller/Posts_controller/latest_posts_controller.dart';
import 'package:saheefa/helper/connection.dart';

class ViewModelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Connection>(() => Connection(), fenix: true);
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
    // Get.lazyPut<BmiController>(() => BmiController(), fenix: true);
    // Get.lazyPut<VitalController>(() => VitalController(), fenix: true);
    // Get.lazyPut<BookingDoctorController>(() => BookingDoctorController(),
    //     fenix: true);
    // Get.lazyPut<HealthMonitoringController>(() => HealthMonitoringController(),
    //     fenix: true);
    // Get.lazyPut<MyDoctorController>(() => MyDoctorController(), fenix: true);
  }
}
