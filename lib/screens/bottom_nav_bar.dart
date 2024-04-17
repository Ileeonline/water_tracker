import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sizer/sizer.dart';
import 'package:water_tracker/constants/constants.dart';
import 'package:water_tracker/screens/home_screen.dart';
import 'package:water_tracker/screens/setting_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Widget> pagesList = [
    const HomeScreen(),
    const SettingScreen(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pagesList[currentIndex],
      bottomNavigationBar: GNav(
        textStyle: GoogleFonts.montserrat(
            fontSize: 12.sp, fontWeight: FontWeight.bold, color: Colors.white),
        tabBorderRadius: 18.sp,
        tabMargin: EdgeInsets.only(bottom: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        color: Colors.grey,
        activeColor: Colors.white,
        backgroundColor: const Color(0xffF4F8FB),
        tabBackgroundColor: kPrimaryColor,
        selectedIndex: currentIndex,
        onTabChange: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        tabs: const [
          GButton(
            icon: CupertinoIcons.home,
            text: '  Home',
          ),
          GButton(
            icon: CupertinoIcons.settings,
            text: '  Setting',
          ),
        ],
      ),
    );
  }
}
