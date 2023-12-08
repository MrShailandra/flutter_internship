import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hello_world/screens/splash_screen/splash_controller.dart';

import '../../gen/assets.gen.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.asset(
                Assets.images.unnamed.path,
                height: 100,
                width: 100,
                fit: BoxFit.contain,
              ),
            ),
            const Positioned(
              bottom: 40,
              child: Text(
                "Made With Love",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
