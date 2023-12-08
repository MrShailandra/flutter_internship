import 'package:get/get.dart';
import 'package:hello_world/screens/splash_screen/splash_controller.dart';

class SplashBiding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<SplashController>(() => SplashController());
    Get.put(
      SplashController(),
    );
  }
}
