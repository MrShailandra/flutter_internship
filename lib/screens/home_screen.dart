import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/methods/common_methods.dart';
import '../widgets/info_tile.dart';

class HelloPage extends StatelessWidget {
  const HelloPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.purple.shade700, shape: BoxShape.circle),
              child: ClipOval(
                child: Image.asset(
                  "assets/images/unnamed.png",
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              "Amir Hossain Bayat",
              style: GoogleFonts.getFont('Pacifico',
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              "iOS & Android Developer",
              style: GoogleFonts.getFont('Poppins',
                  fontSize: 18, letterSpacing: 3.0, color: Colors.white),
            ),
            const Divider(
              color: Colors.white,
              height: 20,
              indent: 100,
              endIndent: 100,
            ),
            const SizedBox(
              height: 20,
            ),
            InfoTile(
              icon: Icons.phone,
              text: "+98 922 505 8169",
              function: () {
                CommonMethods().operUrls("tel:918511224041");
              },
            ),
            InfoTile(
                icon: Icons.email,
                text: "AmirBayat.dev@gmail.com",
                function: () {
                  CommonMethods().operUrls("mailto:sr@grr.la");
                }),
            InfoTile(
                icon: Icons.account_circle,
                text: "@CodeWithflexz",
                function: () {
                  CommonMethods().operUrls("https://wa.me/918511224041");
                }),
          ],
        ),
      ),
    );
  }
}
