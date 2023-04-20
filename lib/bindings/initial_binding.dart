import 'package:get/get.dart';
import 'package:nauggets_assessment/controller/splash_controller.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SplashController(), permanent: true);
  }
}
