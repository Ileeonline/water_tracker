import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';
import 'package:water_tracker/constants/constants.dart';
import 'package:water_tracker/models/water.dart';

class WaterListTile extends StatelessWidget {
  final Water water;
  const WaterListTile({super.key, required this.water});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 1.h),
      padding: EdgeInsets.all(14.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.sp),
      ),
      child: Row(
        children: [
          Icon(
            Iconsax.glass,
            size: 25.sp,
          ),
          smallWidthSizedBox,
          Text(
            water.getLitre,
            style: GoogleFonts.montserrat(
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          widthSizedBox,
          Text(
            water.getTime,
            style: GoogleFonts.montserrat(
              fontSize: 10.sp,
              fontWeight: FontWeight.normal,
            ),
          ),
          smallWidthSizedBox,
          const Icon(Icons.more_vert_rounded),
        ],
      ),
    );
  }
}
