import 'dart:async';

import 'package:denukan_business_solutions/ServiceClass.dart';
import 'package:denukan_business_solutions/constants.dart';
import 'package:denukan_business_solutions/onboarding.dart';
import 'package:denukan_business_solutions/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Welcome.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash2 extends StatefulWidget {
  const Splash2({Key? key}) : super(key: key);

  @override
  _Splash2State createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  setSplash() {
    Timer(const Duration(seconds: 15), () {
      onChange();
    });
  }

  onChange() {
    Navigator.pushReplacement(
        context,
        PageRouteBuilder(
            maintainState: true,
            opaque: true,
            pageBuilder: (context, _, __) => Onboarding(),
            transitionDuration: const Duration(seconds: 1),
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
      backgroundColor: Colors.black87,
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
            const SizedBox(
              height: 250,
            ),
            // const CircularProgressIndicator(
            //   color: kPrimaryColor,
            //   strokeWidth: 10,
            //   semanticsLabel: ("Please Wait"),
            // ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Loading...",
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 20,
                fontFamily: "OpenSans",
                letterSpacing: 0,
                //fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
