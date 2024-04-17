// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';
import 'package:water_tracker/components/my_textfield.dart';

import '../constants/constants.dart';
import 'schedule_reminder_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF4F8FB),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              smallSizedBox,
              smallSizedBox,
              smallSizedBox,
              Text(
                "Settings",
                style: GoogleFonts.montserrat(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              halfSizedBox,
              Text(
                'Your gender',
                style: GoogleFonts.montserrat(
                  fontSize: 12.sp,
                  color: Colors.grey[800],
                ),
              ),
              GenderBox(
                name: 'Male',
                value: true,
                onChanged: (p0) {},
              ),
              GenderBox(
                name: 'Female',
                value: true,
                onChanged: (p0) {},
              ),
              GenderBox(
                name: 'I prefer not to say',
                value: true,
                onChanged: (p0) {},
              ),
              smallSizedBox,
              const MyTextField(
                labelText: "Weight",
                hintText: "Weight in kg",
                icon: Iconsax.weight,
                obscureText: false,
              ),
              smallSizedBox,
              const MyTextField(
                labelText: "Goal",
                hintText: "Water intake goal",
                icon: Iconsax.milk,
                obscureText: false,
              ),
              smallSizedBox,
              const MyTextField(
                labelText: "Time",
                hintText: "Sleep time",
                icon: Iconsax.timer,
                obscureText: false,
              ),
              smallSizedBox,
              const MyTextField(
                labelText: "Time",
                hintText: "Wake up time",
                icon: Iconsax.timer,
                obscureText: false,
              ),
              smallSizedBox,
              smallSizedBox,
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (e) => const ScheduleReminderScreen(),
                      ),
                    );
                  },
                  child: Text(
                    '🗓 Schedule Reminder',
                    style: GoogleFonts.montserrat(
                      fontSize: 12.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class GenderBox extends StatelessWidget {
  final String name;
  final bool? value;
  void Function(bool?)? onChanged;
  GenderBox({
    super.key,
    required this.name,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
        ),
        Text(
          name,
          style: GoogleFonts.montserrat(
            fontSize: 12.sp,
            color: Colors.grey[800],
          ),
        ),
      ],
    );
  }
}
