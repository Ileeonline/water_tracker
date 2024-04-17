import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:water_tracker/constants/constants.dart';

import 'login_signup_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (e) => const LoginSignUpScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/glucorx.png'),
            SizedBox(
              height: 1.h,
            ),
            Stack(
              children: [
                Image.asset('assets/images/ring.png'),
                Positioned(
                    top: 4.9.h,
                    right: .7.h,
                    child: Image.asset('assets/images/water.png')),
              ],
            ),
            Text(
              "Water Traker",
              style: kHeadTextStyle,
            ),
            Text(
              "Stay hydrate and track your\ndaily water intake",
              style: kBodyTextStyle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
