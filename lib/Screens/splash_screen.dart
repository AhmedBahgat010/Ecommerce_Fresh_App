import 'dart:async';

import 'package:flutter/material.dart';

import '../Constant/My_colors/colors.dart';
import 'home_screen/fresh_home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const FreshHomeScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: black,
      body: Center(
        child: Image(
            image: AssetImage(
              'assets/images/splash.png',
            ),
            width: double.infinity,
            height: double.infinity),
      ),
    );
  }
}
