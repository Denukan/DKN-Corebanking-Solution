import 'dart:async';
import 'package:denukan_business_solutions/constants.dart';
import 'package:denukan_business_solutions/main.dart';
import 'package:denukan_business_solutions/splash2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  setSplash() {
    Timer(const Duration(seconds: 3), () {
      onChange();
    });
  }

  onChange() {
    Navigator.pushReplacement(
        context,
        PageRouteBuilder(
            maintainState: true,
            opaque: true,
            pageBuilder: (context, _, __) => Splash2(),
            transitionDuration: const Duration(seconds: 5),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            }));
  }

  @override
  void initState() {
    setSplash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Column(
          children: [
            const SizedBox(
              height: 280,
            ),
            Image.asset(
              "lib/assets/dkns.png",
              height: 170,
            ),
            Text(
              "DENUKAN",
              style: GoogleFonts.openSans(
                fontSize: 30,
                color: Colors.green[900],
                fontWeight: FontWeight.w800,
                letterSpacing: 0.0,
              ),
            ),
            Text(
              "Business Solutions",
              style: GoogleFonts.openSans(
                fontSize: 20,
                color: Colors.blueGrey,
                fontWeight: FontWeight.w700,
                letterSpacing: 2.0,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
