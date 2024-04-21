import 'package:bitlearn/app/api_helper.dart';
import 'package:bitlearn/app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DashboardPage extends StatefulWidget {
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final TextEditingController _phoneController = TextEditingController();
  void _handleCallButtonPressed() {
    String phoneNumber = _phoneController.text;
    // You should add validation of the phone number here before making the call
    ApiHelper.makePhoneCall(phoneNumber);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F8FF),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 100.h,
        title: Padding(
          padding: EdgeInsets.only(
            left: 10.w,
            right: 10.w,
          ),
          child: Row(
            children: [
              Row(
                children: [
                  Image.asset(
                    'lib/app/assets/menu.png',
                    height: 32.h,
                    width: 32.w,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    'Hi, ',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    ),
                  ),
                  Text(
                    'Daksh 👋',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              CircleAvatar(
                radius: 30.w,
                backgroundImage: AssetImage('lib/app/assets/profile.png'),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 12.w,
                right: 12.w,
              ),
              child: Text(
                'Find your favorite Web 3 course here',
                style: GoogleFonts.montserrat(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
            SizedBox(
              height: 8.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
              ),
              child: Row(
                children: [
                  Container(
                    width: 305.w,
                    height: 52.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20.w,
                      ),
                      color: AppColors.white2,
                    ),
                    child: Opacity(
                      opacity: 0.4,
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
                          prefixIcon: Icon(
                            Icons.search,
                            size: 24.w,
                            color: AppColors.black,
                          ),
                          hintText: 'Search Course',
                          hintStyle: GoogleFonts.inter(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black,
                          ),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(
                        10.w,
                      ),
                      onTap: () {},
                      child: Image.asset(
                        'lib/app/assets/settings.png',
                        width: 48.w,
                        height: 48.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0.0, right: 10.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(
                                10.w,
                              ),
                              onTap: () {
                                Get.toNamed('/course');
                              },
                              child: Image.asset(
                                'lib/app/assets/aneesh.png',
                                height: 330.h,
                                width: 260.w,
                              ),
                            ),
                          ),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(
                                10.w,
                              ),
                              onTap: () {},
                              child: Image.asset(
                                'lib/app/assets/ankur.png',
                                height: 330.h,
                                width: 260.w,
                              ),
                            ),
                          ),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(
                                10.w,
                              ),
                              onTap: () {},
                              child: Image.asset(
                                'lib/app/assets/aneesh.png',
                                height: 330.h,
                                width: 260.w,
                              ),
                            ),
                          ),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(
                                10.w,
                              ),
                              onTap: () {},
                              child: Image.asset(
                                'lib/app/assets/ankur.png',
                                height: 330.h,
                                width: 260.w,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.w, right: 5.w),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff5667FD),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Get connected to Athena!",
                          style: GoogleFonts.montserrat(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(255, 255, 255, 255))),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.black1,
                              ),
                              height: 50,
                              child: TextField(
                                controller: _phoneController,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: AppColors.black1,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(
                                      20.w,
                                    ),
                                  ),
                                  hintText: 'Enter your phone number to call',
                                  hintStyle: GoogleFonts.inter(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.white,
                                  ),
                                  isDense: true,
                                ),
                                keyboardType: TextInputType.phone,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          IconButton(
                            icon: Image.asset('lib/app/assets/athena.png',
                                height: 50, width: 50),
                            onPressed: _handleCallButtonPressed,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
