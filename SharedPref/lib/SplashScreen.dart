import 'dart:async';

import 'package:database_sharedpref/Login.dart';
import 'package:database_sharedpref/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final DBKEY = "REQUiRED";
  final DBKEY1 = "Criden";
  @override
  void initState() {
    wheretogo();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.lightBlue,
        child: Center(
          child: SizedBox(
            width: 300,
            height: 300,
            child: Image.asset(
              "assets/img/portfolio.png",
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  void wheretogo() async {
    var pref = await SharedPreferences.getInstance();
    var requiredLogin = pref.getBool(DBKEY);

    Timer(const Duration(seconds: 5), () {
      if (requiredLogin != null) {
        if (!requiredLogin) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: ((context) => const Dashboard())));
        } else {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: ((context) => const Login())));
        }
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: ((context) => const Login())));
      }
    });
  }
}
