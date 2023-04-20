import 'package:get/get.dart';
import 'package:http/http.dart';

class SplashController extends GetxController {
  @override
  void onReady() async {
    initScreen();
    super.onReady();
  }

  void initScreen() async {
    await Future.delayed(const Duration(seconds: 5));
    navigateToMain();
  }

  void navigateToMain() {
    Get.offAllNamed("/mains");
  }
}
