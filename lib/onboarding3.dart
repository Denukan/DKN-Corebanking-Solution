import 'dart:async';
import 'package:denukan_business_solutions/constants.dart';
import 'package:denukan_business_solutions/main.dart';
import 'package:denukan_business_solutions/onboarding4.dart';
import 'package:denukan_business_solutions/splash2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding3 extends StatefulWidget {
  const Onboarding3({Key? key}) : super(key: key);

  @override
  _Onboarding3State createState() => _Onboarding3State();
}

class _Onboarding3State extends State<Onboarding3> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: _body(context),
      bottomNavigationBar: _bottomBar(context),
      backgroundColor: Colors.transparent,
    );
  }

  Widget _body(context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          // ignore: prefer_const_constructors
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('lib/assets/dknhome2.jpg'),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.black54,
          body: Column(
            children: [
              SizedBox(height: _height * .07),
              Row(
                children: [
                  SizedBox(
                    width: _width * .15,
                  ),
                  // Image.asset(
                  //   "lib/assets/dkns.png",

                  //   height: 40.69,
                  //   //width: 31.71,
                  // ),
                ],
              ),
              // Text(
              //   "DENUKAN",
              //   style: GoogleFonts.openSans(
              //     fontSize: 30,
              //     color: Colors.green[900],
              //     fontWeight: FontWeight.w800,
              //     letterSpacing: 0.0,
              //   ),
              // ),
              // Text(
              //   "Business Solutions",
              //   style: GoogleFonts.openSans(
              //     fontSize: 20,
              //     color: Colors.blueGrey,
              //     fontWeight: FontWeight.w700,
              //     letterSpacing: 2.0,
              //   ),
              // ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _bottomBar(context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Container(
      //color: Colors.transparent,
      height: _height * .3957,
      decoration: const BoxDecoration(
        color: white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(children: [
        SizedBox(
          height: _height * 0.045,
        ),
        Row(
          children: [
            SizedBox(
              width: _width * 0.12,
            ),
            Container(
              height: _height * .005924,
              width: _width * .0128,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: kPrimaryColor,
              ),
            ),
            SizedBox(
              width: _width * .02,
            ),
            Container(
              height: _height * .005924,
              width: _width * .067,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: kPrimaryColor,
              ),
            ),
            SizedBox(
              width: _width * .02,
            ),
            Container(
              height: _height * .005924,
              width: _width * .103,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
        SizedBox(
          height: _height * .04,
        ),
        Row(
          children: [
            SizedBox(
              width: _width * 0.12,
            ),
            Container(
              // width: _width * .45385,
              // height: _height * .0379,
              //width: _width * .4538,
              child: Text(
                "Lets get Started",
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  //fontSize: _width * .0564,
                  fontWeight: FontWeight.w700,
                  color: kPrimaryColor,
                  letterSpacing: 0.4,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: _height * .02,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: _width * .1155),
          child: Row(
            children: [
              Container(
                width: _width * .769,
                //height: _height * .064,
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Odio faucibus est viverra viverra\nsit arcu feugiat purus tempor.",
                  style: GoogleFonts.poppins(
                    //fontSize: 12,
                    fontSize: _width * .0308,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.1,
                    color: Color(0xff8D93A1),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: _height * .04,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: _width * .0745),
          child: Row(children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Center(
                child: Container(
                  height: _height * .0633,
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
                          "Next",
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
