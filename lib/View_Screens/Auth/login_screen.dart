import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pandalive/Routes/app_routes.dart';
import 'package:pandalive/Utils/app_style.dart';
import 'package:pandalive/Utils/constant.dart';
import 'package:pandalive/Utils/app_images.dart';
import 'package:pandalive/Widgets/Buttons/elevatedbutton0.dart';
import 'package:pandalive/Widgets/Buttons/icontbutton0.dart';
import 'package:pandalive/Widgets/Buttons/textbutton0.dart';
import 'package:pandalive/Widgets/TextFields/textfield0.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double heigth = HeightWidth.screenHeight(context);
    final double width = HeightWidth.screenWidth(context);

    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Iconbutton0(
            image: Icon(Icons.arrow_back_ios_new, color: Colors.white),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image(
                  height: heigth * 0.15,
                  width: width * 010,
                  image: AssetImage(AppImages.applogo),
                ),
                Text(
                  "PandaLive",
                  style: AppStyle.logoText.copyWith(fontSize: 25),
                ),
                Gap(heigth * 0.03),

                Text(
                  "WelCome Back!",
                  style: AppStyle.logoText.copyWith(
                    fontSize: 18,
                    letterSpacing: 5,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.amber,
                    decorationStyle: TextDecorationStyle.dashed,
                  ),
                ),

                Gap(heigth * 0.02),
                Textfield0(
                  controller: emailController,
                  labeltext: Text("Enter Your Email"),
                  keyboardtypee: TextInputType.emailAddress,
                ),
                Gap(heigth * 0.020),
                Textfield0(
                  controller: passwordController,
                  labeltext: Text("Enter Password"),
                  keyboardtypee: TextInputType.number,
                ),
                // Gap(heigth * 0.02),
                Align(
                  alignment: Alignment.topLeft,
                  child: Textbutton0(
                    text: 'Forget Password ?',
                    onPressed: () {},
                    textcolor: Colors.amber,
                  ),
                ),
                Elevatedbutton0(
                  w: width * 0.88,
                  h: heigth * 0.065,

                  bgColour: Colors.amber,
                  onPressed: () {
                    Get.toNamed(AppRoutes.login);
                  },
                  text: 'Login',
                ),

                Gap(heigth * 0.04),
                Image(image: AssetImage(AppImages.or)),
                Gap(heigth * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Iconbutton0(
                      image: Image.asset(AppImages.google),
                      onPressed: () {},
                    ),
                    Iconbutton0(
                      image: Image.asset(AppImages.facebook),
                      onPressed: () {},
                    ),
                  ],
                ),
                Gap(heigth * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    Textbutton0(
                      text: "Signup",
                      onPressed: () {
                        Get.toNamed(AppRoutes.signup);
                      },
                      textcolor: Colors.amber,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      onWillPop: () async {
        return false;
      },
    );
  }
}
