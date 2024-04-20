import 'package:bitlearn/app/constants/app_colors.dart';
import 'package:bitlearn/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

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
        child: Column(
          children: [
            SizedBox(
              height: 25.h,
            ),
            Image.asset(
              'lib/app/assets/rocketbg.png',
              width: 520.w,
              height: 458.h,
            ),
            Container(
              height: 360.h,
              width: 390.w,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/app/assets/whitebox.png'),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  top: 87.h,
                  bottom: 40.h,
                  left: 22.w,
                  right: 22.w,
                ),
                child: Column(
                  children: [
                    Text(
                      "Let's explore BitLearn",
                      style: GoogleFonts.montserrat(
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w800,
                        color: AppColors.black,
                      ),
                    ),
                    SizedBox(
                      height: 11.h,
                    ),
                    Text(
                      'Explore myriad courses and\n'
                      'achieve fresh milestones daily.',
                      style: GoogleFonts.montserrat(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.grey,
                        height: 3.6,
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Container(
                      height: 60.h,
                      width: 344.h,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.2527, 0.8832],
                          colors: [
                            Color(0xFFFF7171),
                            Color(0xFFFF5050),
                          ],
                          transform: GradientRotation(176 * (3.14159 / 180)),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(255, 106, 106, 0.30),
                            blurRadius: 16.0,
                            offset: Offset(0.0, 8.0), // x, y
                          ),
                          BoxShadow(
                            color: Color.fromRGBO(255, 113, 113, 0.30),
                            blurRadius: 20.0,
                            offset: Offset(0.0, 12.0), // x, y
                          ),
                        ],
                        borderRadius: BorderRadius.circular(
                          60.w,
                        ),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(
                            60.w,
                          ),
                          onTap: () {
                            Get.toNamed(Routes.LOGIN);
                          },
                          child: Center(
                            child: Text(
                              'Get Started',
                              style: GoogleFonts.montserrat(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
