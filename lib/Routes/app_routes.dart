import 'package:get/get.dart';
import 'package:pandalive/View_Screens/Auth/forget_password.dart';
import 'package:pandalive/View_Screens/Auth/login_screen.dart';
import 'package:pandalive/View_Screens/Auth/otp_screen.dart';
import 'package:pandalive/View_Screens/Auth/setnew_password.dart';
import 'package:pandalive/View_Screens/Auth/signup_screen.dart';
import 'package:pandalive/View_Screens/Ui_Screens/Streaming_Screens/your_stream.dart';
import 'package:pandalive/View_Screens/Ui_Screens/Withdraw_Screens/add_wallet.dart';
import 'package:pandalive/View_Screens/Ui_Screens/founder_message.dart';
import 'package:pandalive/View_Screens/Ui_Screens/onboarding.dart';
import 'package:pandalive/View_Screens/Ui_Screens/watch_stream.dart';
import 'package:pandalive/View_Screens/bottomnav_bar.dart';

class AppRoutes {
  static const splash = '/';
  static const login = "/LoginScreen";
  static const signup = "/SignupScreen";
  static const forgetp = "/ForgetPassword";
  static const otp = "/OtpScreen";
  static const newpassword = "/SetnewPassword";
  static const foundermsg = "/FounderMessage";
  static const bottomnav = "/BottomnavBar";
  static const watchstream = "/WatchStream";
  static const wallet = "/AddWallet";
  static const yourstream = "/YourStream";
  static final routes = [
    GetPage(name: splash, page: () => SplashScreen()),
    GetPage(name: login, page: () => LoginScreen()),
    GetPage(name: signup, page: () => SignupScreen()),
    GetPage(name: forgetp, page: () => ForgetPassword()),
    GetPage(name: otp, page: () => OtpScreen()),
    GetPage(name: newpassword, page: () => SetnewPassword()),
    GetPage(name: foundermsg, page: () => FounderMessage()),
    GetPage(name: bottomnav, page: () => BottomnavBar()),
    GetPage(name: watchstream, page: () => WatchStream()),
    GetPage(name: wallet, page: () => AddWallet()),
    GetPage(name: yourstream, page: () => YourStream()),
  ];
}
