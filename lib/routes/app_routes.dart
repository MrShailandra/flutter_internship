import 'package:get/get.dart';
import 'package:hello_world/screens/home_screen.dart';
import 'package:hello_world/screens/splash_screen/splash_binding.dart';
import 'package:hello_world/screens/splash_screen/splash_view.dart';

class AppRoutes {
  static String splashRoute = "/";
  static String homeRoute = "/home";

  static List<GetPage> routes = [
    GetPage(
        name: splashRoute,
        page: () => const SplashScreen(),
        binding: SplashBiding()),
    GetPage(
        name: homeRoute,
        page: () => const HomeScreen(),
        binding: SplashBiding())
  ];
}
