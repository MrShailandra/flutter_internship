import 'dart:math';

import 'package:flutter/material.dart';

class HelloPage extends StatefulWidget {
  const HelloPage({super.key});

  @override
  State<HelloPage> createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  int currentDice = 1;
  void roleDice() {
    Random random = Random();

    setState(() {
      currentDice = random.nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                roleDice();
              },
              child: Image.asset(
                "assets/images/$currentDice.png",
                height: 160,
                width: 160,
              ),
            )
          ],
        ),
      ),
    );
  }
}
