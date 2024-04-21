import 'package:bitlearn/app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F8FF),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 70.h,
            ),
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 25.w,
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(50.r),
                      onTap: () {
                        Get.back();
                      },
                      child: Image.asset(
                        'lib/app/assets/back.png',
                        width: 50.w,
                        height: 50.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.w,
            ),
            child: Text(
              'Fundamentals of Blockchain',
              style: GoogleFonts.montserrat(
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Image.asset('lib/app/assets/orangecard.png'),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.w,
            ),
            child: Row(
              children: [
                Text(
                  'About the Course',
                  style: GoogleFonts.montserrat(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.w,
            ),
            child: Image.asset('lib/app/assets/whitecard.png'),
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            height: 45.h,
            width: 185.w,
            decoration: BoxDecoration(
              color: AppColors.orange,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(20.r),
                onTap: () {
                  Get.toNamed('/block1');
                },
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 22.w,
                    right: 10.w,
                  ),
                  child: Center(
                    child: Text(
                      'Start Learning ->',
                      style: GoogleFonts.montserrat(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
