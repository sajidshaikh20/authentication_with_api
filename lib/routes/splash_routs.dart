import 'package:get/get.dart';
import 'package:nauggets_assessment/view/login_signup.dart';
import 'package:nauggets_assessment/view/splash_screen.dart';

class SplashRouts {
  static List<GetPage> routes() => [
        GetPage(name: "/", page: () => const SpalashScreen()),
        GetPage(name: "/mains", page: () => Authscreen())
      ];
}
