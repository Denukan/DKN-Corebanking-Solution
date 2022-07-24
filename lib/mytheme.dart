import 'package:denukan_business_solutions/ServiceClass.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:denukan_business_solutions/shared.dart';
import 'package:denukan_business_solutions/ServiceClass.dart';

class ThemeSettings with ChangeNotifier {
  final darkTheme = ThemeData(
    primaryColor: Colors.black,
    brightness: Brightness.dark,
    // ignore: deprecated_member_use
    accentColor: Colors.white,
    backgroundColor: Colors.black,
    dividerColor: Colors.black12,
    // ignore: deprecated_member_use
    accentIconTheme: const IconThemeData(color: Colors.black12),
    primarySwatch: Colors.grey,
  );

  final lightTheme = ThemeData(
    primaryColor: Colors.white,
    brightness: Brightness.light,
    // ignore: deprecated_member_use
    accentColor: Colors.black,
    backgroundColor: Colors.white,
    dividerColor: Colors.white54,
    // ignore: deprecated_member_use
    accentIconTheme: const IconThemeData(color: Colors.white),
    primarySwatch: Colors.grey,
  );

  ThemeData? _mytheme;
  ThemeData? getTheme() {
    _mytheme;
  }

  themeNotifier() {
    ShareData.getData("myTheme").then((value) {
      print("this is the value read from storage  + ${value.toString()}");
      var myTheme = value ?? "light";
      if (myTheme == "light") {
        _mytheme = lightTheme;
      } else {
        print("Setting Dark Theme");
        _mytheme = darkTheme;
      }
      notifyListeners();
    });
  }

  void setDarkMode() async {
    _mytheme = darkTheme;
    ShareData.saveData("myTheme", "dark");
    notifyListeners();
  }

  void setLightMode() async {
    _mytheme = lightTheme;
    ShareData.saveData("myTheme", "light");
    notifyListeners();
  }
}
