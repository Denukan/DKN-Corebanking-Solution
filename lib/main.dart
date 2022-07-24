import 'package:denukan_business_solutions/ServiceClass.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Welcome.dart';

void main() => runApp(ChangeNotifierProvider(
      create: (context) => ServiceClass(),
      child: const Landing(),
    ));

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);
  @override
  _LandingState createState() => _LandingState();
  static _LandingState of(BuildContext context) =>
      context.findAncestorStateOfType<_LandingState>()!;
}

class _LandingState extends State<Landing> {
  ThemeMode _themeMode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    bool darkMode = false;
    bool isConnected = false;
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.amber,
      ),
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      debugShowCheckedModeBanner: false,
      title: "Text",
      home: const WelcomeScreen(),
    );
  }

  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }
}

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool darkMode = false;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Welcome(),
    );
  }
}
