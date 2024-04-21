import 'package:bitlearn/app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BlockPageFour extends StatelessWidget {
  const BlockPageFour({super.key});

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
          Text(
            'Play With Blocks',
            style: GoogleFonts.montserrat(
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          Opacity(
            opacity: 0.54,
            child: Text(
              '4/15',
              style: GoogleFonts.montserrat(
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 22.w,
            ),
            child: Image.asset('lib/app/assets/block4.png'),
          ),
          Spacer(),
          Container(
            height: 55.h,
            width: 310.w,
            decoration: BoxDecoration(
              color: AppColors.orange,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(20.r),
                onTap: () {
                  Get.toNamed('/block5');
                },
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 22.w,
                    right: 10.w,
                  ),
                  child: Center(
                    child: Text(
                      'Continue',
                      style: GoogleFonts.rubik(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 70.h,
          ),
        ],
      ),
    );
  }
}
