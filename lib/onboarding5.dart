import 'dart:async';
import 'package:denukan_business_solutions/constants.dart';
import 'package:denukan_business_solutions/main.dart';
import 'package:denukan_business_solutions/onboarding4.dart';
import 'package:denukan_business_solutions/splash2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding5 extends StatefulWidget {
  const Onboarding5({Key? key}) : super(key: key);

  @override
  _Onboarding5State createState() => _Onboarding5State();
}

class _Onboarding5State extends State<Onboarding5> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(children: [
        const SizedBox(
          height: 350,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: _width * .0745),
          child: Row(children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Center(
                child: Container(
                  height: _height * .0533,
                  width: _width * .85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    border: Border.all(color: kPrimaryColor),
                    // gradient: const LinearGradient(
                    //     begin: Alignment.topLeft,
                    //     end: Alignment.bottomRight,
                    //     colors: [
                    //       kPrimaryColor,
                    //       Color(0xff307fb8),
                    //     ]),
                  ),
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Onboarding4()));
                      },
                      child: Center(
                        child: Text(
                          "LOGIN",
                          style: GoogleFonts.poppins(
                            color: Colors.black12,
                            fontWeight: FontWeight.w500,
                            //fontSize: 14.68,
                            fontSize: _width * .0376,
                          ),
                        ),
                      )),
                ),
              ),
            ),
          ]),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: _width * .0745),
          child: Row(children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Center(
                child: Container(
                  height: _height * .0533,
                  width: _width * .85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          kPrimaryColor,
                          Color(0xff307fb8),
                        ]),
                  ),
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Onboarding4()));
                      },
                      child: Center(
                        child: Text(
                          "GET STARTED",
                          style: GoogleFonts.poppins(
                            color: white,
                            fontWeight: FontWeight.w500,
                            //fontSize: 14.68,
                            fontSize: _width * .0376,
                          ),
                        ),
                      )),
                ),
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}
