import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:water_tracker/components/my_button.dart';
import 'package:water_tracker/screens/loginin_screen.dart';

import '../components/my_textfield.dart';
import '../constants/constants.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/Path3.png',
                  ),
                  Positioned(
                    top: 8.h,
                    left: 32.w,
                    child: Stack(
                      children: [
                        Image.asset('assets/images/ring.png'),
                        Positioned(
                            top: 4.9.h,
                            right: .7.h,
                            child: Image.asset('assets/images/water.png')),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          halfSizedBox,
          Text(
            "Forgot password",
            style: GoogleFonts.montserrat(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Please provide your email for recovery",
            style: GoogleFonts.montserrat(
              color: Colors.grey[700],
              fontSize: 12.sp,
              fontWeight: FontWeight.normal,
            ),
          ),
          halfSizedBox,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Form(
              child: Column(
                children: [
                  const MyTextField(
                      labelText: 'Email',
                      hintText: "Enter your Email",
                      icon: Icons.email_outlined,
                      obscureText: false),
                  halfSizedBox,
                  MyButton(
                    btnTxt: "Submit",
                    onTap: () {},
                  )
                ],
              ),
            ),
          ),
          halfSizedBox,
          Text(
            "OR",
            style: GoogleFonts.montserrat(
              fontSize: 12.sp,
              color: Colors.grey[700],
              fontWeight: FontWeight.normal,
            ),
          ),
          halfSizedBox,
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (e) => const LoginInScreen(),
                ),
              );
            },
            child: Text(
              '← Back to login',
              style: GoogleFonts.montserrat(
                fontSize: 12.sp,
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
