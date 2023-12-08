import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_world/routes/app_routes.dart';

import '../home_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 1), () {
      Get.offNamed(AppRoutes.homeRoute);
    });
    super.onInit();
  }
}
