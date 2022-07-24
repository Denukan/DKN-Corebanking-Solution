import 'package:denukan_business_solutions/ServiceClass.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:denukan_business_solutions/mytheme.dart';

class ShareData {
  //ShareData? mydata;
  static void saveData(String key, dynamic value) async {
    final mypref = await SharedPreferences.getInstance();
    if (value is int) {
      mypref.setInt(key, value);
    } else if (value is String) {
      mypref.setString(key, value);
    } else if (value is bool) {
      mypref.setBool(key, value);
    } else {
      print("Invalid Type");
    }
  }

  static Future<dynamic> getData(String key) async {
    final mypref = await SharedPreferences.getInstance();
    dynamic object = mypref.get(key);
    return object;
  }

  static Future<dynamic> deleteData(String key) async {
    final mypref = await SharedPreferences.getInstance();
    dynamic object = mypref.remove(key);
    return object;
  }
}
