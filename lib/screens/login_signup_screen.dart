import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../constants/constants.dart';
import 'loginin_screen.dart';
import 'signup_screen.dart';

class LoginSignUpScreen extends StatelessWidget {
  const LoginSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/images/Union17.png'),
              Positioned(
                  right: -12.w,
                  top: -1.5.h,
                  child: Image.asset('assets/images/Path1.png')),
              Positioned(
                top: 22.h,
                left: 25.w,
                child: Column(
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
            ],
          ),
          sizedBox,
          const LoginButton(),
          SizedBox(
            height: 1.5.h,
          ),
          const SignUpButton(),
        ],
      ),
    );
  }
}

// buttons from here
class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginInScreen(),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 1.5.h),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: kborderRadius,
        ),
        child: Text(
          "Login",
          style: kBodyTextStyle,
        ),
      ),
    );
  }
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SignUpScreen(),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 1.5.h),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: kborderRadius,
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
        ),
        child: Text(
          "SignUp",
          style: GoogleFonts.montserrat(fontSize: 12.sp, color: Colors.black),
        ),
      ),
    );
  }
}
