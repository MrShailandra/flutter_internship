import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_world/routes/app_routes.dart';

import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Profile App",
      theme: ThemeData(useMaterial3: true),
      initialRoute: AppRoutes.splashRoute,
      // home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.routes,
    );
  }
}
