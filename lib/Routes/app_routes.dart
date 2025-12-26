import 'package:get/get.dart';
import 'package:pandalive/View_Screens/Auth/login_screen.dart';
import 'package:pandalive/View_Screens/Auth/signup_screen.dart';
import 'package:pandalive/View_Screens/onboarding.dart';

class AppRoutes {
  static const splash = '/';
  static const login = "/LoginScreen";
  static const signup = "/SignupScreen";
  static final routes = [
    GetPage(name: splash, page: () => SplashScreen()),
    GetPage(name: login, page: () => LoginScreen()),
    GetPage(name: signup, page: () => SignupScreen()),
  ];
}
