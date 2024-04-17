import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

// sized box from here
SizedBox sizedBox = SizedBox(
  height: 10.h,
);
SizedBox halfSizedBox = SizedBox(
  height: 5.h,
);
SizedBox widthSizedBox = SizedBox(
  width: 10.h,
);
SizedBox halfWidthSizedBox = SizedBox(
  width: 5.h,
);

// bordar radius from here
BorderRadius kborderRadius = BorderRadius.circular(10.sp);
BorderRadius kTopBorderRadius =
    BorderRadius.vertical(top: Radius.circular(18.sp));
BorderRadius kBottomBorderRadius =
    BorderRadius.vertical(bottom: Radius.circular(18.sp));

// colors from here
Color kPrimaryColor = const Color(0xff369FFF);
Color kWhiteColor = const Color(0xffffffff);

// text style from here
TextStyle kHeadTextStyle = GoogleFonts.montserrat(
  fontSize: 16.sp,
  fontWeight: FontWeight.normal,
  color: Colors.white,
);
TextStyle kBodyTextStyle = GoogleFonts.montserrat(
  fontSize: 12.sp,
  fontWeight: FontWeight.normal,
  color: const Color(0xffC1E2FF),
);
