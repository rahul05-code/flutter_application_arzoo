import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_arzoo/cart_page.dart';
import 'package:flutter_application_arzoo/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () async {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      bool isLoggedin = sharedPreferences.getBool('isLoggedin') ?? false;
      if (isLoggedin) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CartPage()),
        );
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.flutter_dash, size: 100, color: Colors.red),
            Text('My Ecom App'),
            Text("Devloped by RK!"),
          ],
        ),
      ),
    );
  }
}
