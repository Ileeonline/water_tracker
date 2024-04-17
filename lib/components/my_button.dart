// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/constants.dart';

class MyButton extends StatelessWidget {
  void Function()? onTap;
  final String btnTxt;
  MyButton({
    super.key,
    required this.btnTxt,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 1.5.h),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: kborderRadius,
        ),
        child: Text(
          btnTxt,
          style: kBodyTextStyle,
        ),
      ),
    );
  }
}
