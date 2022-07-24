import 'package:denukan_business_solutions/constants.dart';
import 'package:denukan_business_solutions/main.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  //String title;
  const Welcome({Key? key}) : super(key: key);
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final bool darkTheme = false;
  String title = "";
  bool darkMode = false;
  @override
  Widget build(BuildContext context) {
    // ThemeMode _dark = Landing.of(context).changeTheme(ThemeMode.dark);
    // if (_dark != null) {
    //   setState(() {
    //     darkMode = true;
    //   });
    // }

    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              const Text(
                "Denukan Business Solutions",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "SecularOne",
                  fontWeight: FontWeight.w100,
                  color: kPrimaryColor,
                ),
              ),
              RaisedButton(
                child: const Text(
                  "Light Mode",
                  style: TextStyle(fontFamily: "SecularOne"),
                ),
                onPressed: () =>
                    Landing.of(context).changeTheme(ThemeMode.light),
              ),
              const SizedBox(
                height: 20,
              ),
              RaisedButton(
                child: const Text("Dark Mode"),
                onPressed: () =>
                    Landing.of(context).changeTheme(ThemeMode.dark),
                // child: darkMode ? const Text("LightMode") : const Text("DarkMode"),
              ),
              const SizedBox(
                height: 20,
              ),
              RaisedButton(
                child: const Text("By Phone"),
                onPressed: () =>
                    Landing.of(context).changeTheme(ThemeMode.system),
                // child: darkMode ? const Text("LightMode") : const Text("DarkMode"),
              ),
              const SizedBox(
                height: 50,
              ),
              // Container(
              //   color: Colors.grey,
              //   height: 50,
              //   width: 100,
              //   child: const Text("Good"),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
