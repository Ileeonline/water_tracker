import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sizer/sizer.dart';
import 'package:water_tracker/components/my_button.dart';
import 'package:water_tracker/components/water_listtile.dart';
import 'package:water_tracker/constants/constants.dart';

import '../models/water.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F8FB),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Column(
          children: [
            smallSizedBox,
            smallSizedBox,
            smallSizedBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Good morning,',
                      style: GoogleFonts.montserrat(
                        fontSize: 12.sp,
                        color: Colors.grey[800],
                      ),
                    ),
                    Text(
                      'Nisar Sheraz',
                      style: GoogleFonts.montserrat(
                          fontSize: 14.sp,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(10.sp),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.notifications,
                    size: 20.sp,
                  ),
                ),
              ],
            ),
            halfSizedBox,
            CircularPercentIndicator(
              radius: 70.sp,
              lineWidth: 20,
              percent: .5,
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: const Color(0xff369FFF),
              backgroundColor: Colors.grey[300]!,
              center: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "75%",
                      style: GoogleFonts.montserrat(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.normal,
                        color: kPrimaryColor,
                      ),
                    ),
                    Text(
                      "200ml",
                      style: GoogleFonts.montserrat(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "-500ml",
                      style: GoogleFonts.montserrat(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            smallSizedBox,
            Text(
              "You have completed 978/2000 of your\ndaily target",
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                fontSize: 12.sp,
                color: Colors.grey[700],
              ),
            ),
            smallSizedBox,
            MyButton(btnTxt: "Add Intake", onTap: () {}),
            smallSizedBox,
            Text(
              "You drank",
              style: GoogleFonts.montserrat(
                fontSize: 14.sp,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: waterList.length,
                itemBuilder: (context, index) {
                  return WaterListTile(
                    water: waterList[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
