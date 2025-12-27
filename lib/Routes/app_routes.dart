import 'package:get/get.dart';
import 'package:pandalive/View_Screens/Auth/forget_password.dart';
import 'package:pandalive/View_Screens/Auth/login_screen.dart';
import 'package:pandalive/View_Screens/Auth/otp_screen.dart';
import 'package:pandalive/View_Screens/Auth/setnew_password.dart';
import 'package:pandalive/View_Screens/Auth/signup_screen.dart';
import 'package:pandalive/View_Screens/onboarding.dart';

class AppRoutes {
  static const splash = '/';
  static const login = "/LoginScreen";
  static const signup = "/SignupScreen";
  static const forgetp = "/ForgetPassword";
  static const otp = "/OtpScreen";
  static const newpassword = "/SetnewPassword";
  static final routes = [
    GetPage(name: splash, page: () => SplashScreen()),
    GetPage(name: login, page: () => LoginScreen()),
    GetPage(name: signup, page: () => SignupScreen()),
    GetPage(name: forgetp, page: () => ForgetPassword()),
    GetPage(name: otp, page: () => OtpScreen()),
    GetPage(name: newpassword, page: () => SetnewPassword()),
  ];
}
