import 'package:bitlearn/app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.2527, 0.8832],
            colors: [
              Color(0xFFFF5050),
              Color(0xFFFF7171),
            ],
            transform: GradientRotation(176 * (3.14159 / 180)),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 32.w,
            right: 32.w,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 110.h,
              ),
              Center(
                child: Text(
                  'Create Account',
                  style: GoogleFonts.inter(
                    fontSize: 36.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white1,
                  ),
                ),
              ),
              SizedBox(
                height: 45.h,
              ),
              Row(
                children: [
                  Text(
                    'Email Address',
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                height: 52.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20.w,
                  ),
                  color: AppColors.white2,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(
                        20.w,
                      ),
                    ),
                    hintText: 'Enter your email address',
                    hintStyle: GoogleFonts.inter(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey1,
                    ),
                    isDense: true,
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  Text(
                    'Password',
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                height: 52.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20.w,
                  ),
                  color: AppColors.white2,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(
                        20.w,
                      ),
                    ),
                    hintText: 'Enter your password',
                    hintStyle: GoogleFonts.inter(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey1,
                    ),
                    suffixIcon: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(
                          24.w,
                        ),
                        onTap: () {},
                        child: Icon(
                          Icons.visibility_off,
                          color: AppColors.black,
                          size: 24.w,
                        ),
                      ),
                    ),
                    isDense: true,
                  ),
                ),
              ),
              Opacity(
                opacity: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        right: 6.w,
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            'Forgot Password ?',
                            style: GoogleFonts.inter(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.white,
                              letterSpacing: 0.06,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Container(
                height: 55.h,
                decoration: BoxDecoration(
                  color: AppColors.black1,
                  borderRadius: BorderRadius.circular(
                    20.w,
                  ),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(
                      20.w,
                    ),
                    onTap: () {},
                    child: Center(
                      child: Text(
                        'Sign In',
                        style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.white1,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 35.w,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: AppColors.white3,
                        thickness: 1.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.w,
                      ),
                      child: Text(
                        'Or Sign In with',
                        style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: AppColors.white3,
                        thickness: 1.h,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              Row(
                children: [
                  const Spacer(),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        'lib/app/assets/google.png',
                        width: 48.w,
                        height: 48.w,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 32.w,
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        'lib/app/assets/apple.png',
                        width: 48.w,
                        height: 48.w,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 32.w,
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        'lib/app/assets/facebook.png',
                        width: 48.w,
                        height: 48.w,
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.white,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Text(
                      "Log In",
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 70.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
