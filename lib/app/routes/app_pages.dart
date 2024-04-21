import 'package:bitlearn/app/routes/app_routes.dart';
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
  ];
}
