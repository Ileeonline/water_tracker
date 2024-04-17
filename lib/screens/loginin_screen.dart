import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:water_tracker/components/my_textfield.dart';
import 'package:water_tracker/constants/constants.dart';
import 'package:water_tracker/screens/forgot_password_screen.dart';
import 'package:water_tracker/screens/signup_screen.dart';

import '../components/my_button.dart';

class LoginInScreen extends StatefulWidget {
  const LoginInScreen({super.key});

  @override
  State<LoginInScreen> createState() => _LoginInScreenState();
}

class _LoginInScreenState extends State<LoginInScreen> {
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
            "Welcome Back!",
            style: GoogleFonts.montserrat(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Login to your existing account",
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
                      labelText: 'Email',
                      hintText: "Enter your Email",
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
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (e) => const ForgotPasswordScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Forgot password?",
                          style: GoogleFonts.montserrat(
                            fontSize: 12.sp,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  halfSizedBox,
                  MyButton(
                    onTap: () {},
                    btnTxt: "SignIn",
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
                  builder: (e) => const SignUpScreen(),
                ),
              );
            },
            child: RichText(
              text: TextSpan(
                text: "Don't have any account?",
                style: GoogleFonts.montserrat(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: " SignUp",
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
          halfSizedBox,
          Text(
            "Or login with",
            style: GoogleFonts.montserrat(
              fontSize: 12.sp,
              fontWeight: FontWeight.normal,
              color: Colors.grey[700],
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
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
