import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:water_tracker/constants/constants.dart';

class ScheduleReminderScreen extends StatefulWidget {
  const ScheduleReminderScreen({super.key});

  @override
  State<ScheduleReminderScreen> createState() => _ScheduleReminderScreenState();
}

class _ScheduleReminderScreenState extends State<ScheduleReminderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Schedule Reminder",
          style: GoogleFonts.montserrat(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: const Color(0xffF4F8FB),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Column(
          children: [
            smallSizedBox,
            ListTile(
              title: Text(
                "11:47 pm",
                style: GoogleFonts.montserrat(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                "Everyday",
                style: GoogleFonts.montserrat(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.normal,
                  color: kPrimaryColor,
                ),
              ),
              trailing: GestureDetector(
                onTap: deleteDialogBox,
                child: const Icon(
                  Icons.delete,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void deleteDialogBox() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(
            "Are you sure you want to delete?",
            style: GoogleFonts.montserrat(
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Yes',
                style: GoogleFonts.montserrat(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'No',
                style: GoogleFonts.montserrat(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
