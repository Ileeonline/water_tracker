import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:water_tracker/components/my_button.dart';
import 'package:water_tracker/screens/loginin_screen.dart';

import '../components/my_textfield.dart';
import '../constants/constants.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
            "Let's get started!",
            style: GoogleFonts.montserrat(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Create an account",
            style: GoogleFonts.montserrat(
              color: Colors.grey[700],
              fontSize: 12.sp,
              fontWeight: FontWeight.normal,
            ),
          ),
          halfSizedBox,
          Form(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Column(
                children: [
                  const MyTextField(
                      labelText: 'Name',
                      hintText: "Enter your name",
                      icon: Icons.person,
                      obscureText: false),
                  SizedBox(height: 2.h),
                  const MyTextField(
                      labelText: 'Email',
                      hintText: "Enter your email",
                      icon: Icons.email_outlined,
                      obscureText: false),
                  SizedBox(height: 2.h),
                  const MyTextField(
                      labelText: 'Password',
                      hintText: "Enter your password",
                      icon: Icons.remove_red_eye_outlined,
                      obscureText: true),
                  SizedBox(height: 1.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot password?",
                        style: GoogleFonts.montserrat(
                          fontSize: 12.sp,
                          color: kPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                  halfSizedBox,
                  MyButton(
                    onTap: () {},
                    btnTxt: "SignUp",
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 1.h),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (e) => const LoginInScreen(),
                ),
              );
            },
            child: RichText(
              text: TextSpan(
                text: "Already have an account?",
                style: GoogleFonts.montserrat(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: " SignIn",
                    style: GoogleFonts.montserrat(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.normal,
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 1.h),
          Text(
            "Or SignUp with",
            style: GoogleFonts.montserrat(
              fontSize: 12.sp,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 2.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(12.sp),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xffF4F8FB),
                  border: Border.all(
                    color: const Color(0xffE2E2E2),
                    width: 1.5,
                  ),
                ),
                child: Image.asset('assets/images/search.png'),
              ),
              halfWidthSizedBox,
              Container(
                padding: EdgeInsets.all(15.sp),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xffF4F8FB),
                  border: Border.all(
                    color: const Color(0xffE2E2E2),
                    width: 1.5,
                  ),
                ),
                child: Image.asset('assets/images/facebook.png'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
