import 'package:bitlearn/app/routes/app_routes.dart';
import 'package:bitlearn/app/views/course_blocks/block_page_1.dart';
import 'package:bitlearn/app/views/course_blocks/block_page_10.dart';
import 'package:bitlearn/app/views/course_blocks/block_page_11.dart';
import 'package:bitlearn/app/views/course_blocks/block_page_12.dart';
import 'package:bitlearn/app/views/course_blocks/block_page_13.dart';
import 'package:bitlearn/app/views/course_blocks/block_page_14.dart';
import 'package:bitlearn/app/views/course_blocks/block_page_15.dart';
import 'package:bitlearn/app/views/course_blocks/block_page_2.dart';
import 'package:bitlearn/app/views/course_blocks/block_page_3.dart';
import 'package:bitlearn/app/views/course_blocks/block_page_4.dart';
import 'package:bitlearn/app/views/course_blocks/block_page_5.dart';
import 'package:bitlearn/app/views/course_blocks/block_page_6.dart';
import 'package:bitlearn/app/views/course_blocks/block_page_7.dart';
import 'package:bitlearn/app/views/course_blocks/block_page_8.dart';
import 'package:bitlearn/app/views/course_blocks/block_page_9.dart';
import 'package:bitlearn/app/views/course_page.dart';
import 'package:bitlearn/app/views/finish_page.dart';
import 'package:bitlearn/app/views/main_page.dart';
import 'package:bitlearn/app/views/home_page.dart';
import 'package:bitlearn/app/views/login_page.dart';
import 'package:bitlearn/app/views/signup_page.dart';
import 'package:bitlearn/app/views/splash_page.dart';
import 'package:get/get.dart';

class AppPages {
  static final List<GetPage<void>> pages = [
    GetPage(
      name: Routes.SPLASH,
      page: SplashPage.new,
    ),
    GetPage(
      name: Routes.LOGIN,
      page: LoginPage.new,
    ),
    GetPage(
      name: Routes.SIGNUP,
      page: SignUpPage.new,
    ),
    GetPage(
      name: Routes.HOME,
      page: HomePage.new,
    ),
    GetPage(
      name: Routes.DASHBOARD,
      page: MainPage.new,
    ),
    GetPage(
      name: Routes.COURSE,
      page: CoursePage.new,
    ),
    GetPage(
      name: Routes.FINISH,
      page: FinishPage.new,
    ),
    GetPage(
      name: Routes.BLOCK1,
      page: BlockPageOne.new,
    ),
    GetPage(
      name: Routes.BLOCK2,
      page: BlockPageTwo.new,
    ),
    GetPage(
      name: Routes.BLOCK3,
      page: BlockPageThree.new,
    ),
    GetPage(
      name: Routes.BLOCK4,
      page: BlockPageFour.new,
    ),
    GetPage(
      name: Routes.BLOCK5,
      page: BlockPageFive.new,
    ),
    GetPage(
      name: Routes.BLOCK6,
      page: BlockPageSix.new,
    ),
    GetPage(
      name: Routes.BLOCK7,
      page: BlockPageSeven.new,
    ),
    GetPage(
      name: Routes.BLOCK8,
      page: BlockPageEight.new,
    ),
    GetPage(
      name: Routes.BLOCK9,
      page: BlockPageNine.new,
    ),
    GetPage(
      name: Routes.BLOCK10,
      page: BlockPageTen.new,
    ),
    GetPage(
      name: Routes.BLOCK11,
      page: BlockPageEleven.new,
    ),
    GetPage(
      name: Routes.BLOCK12,
      page: BlockPageTwelve.new,
    ),
    GetPage(
      name: Routes.BLOCK13,
      page: BlockPageThirteen.new,
    ),
    GetPage(
      name: Routes.BLOCK14,
      page: BlockPageFourteen.new,
    ),
    GetPage(
      name: Routes.BLOCK15,
      page: BlockPageFifteen.new,
    ),
    GetPage(
      name: Routes.BLOCK14,
      page: BlockPageOne.new,
    ),
  ];
}
