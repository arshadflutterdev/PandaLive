import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pandalive/Routes/app_routes.dart';
import 'package:pandalive/Utils/app_images.dart';
import 'package:pandalive/Utils/app_style.dart';
import 'package:pandalive/Utils/constant.dart';
import 'package:pandalive/Widgets/Buttons/icontbutton0.dart';
import 'package:pandalive/Widgets/Buttons/textbutton0.dart';
import 'package:pandalive/Widgets/TextFields/textfield0.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    double height = HeightWidth.screenHeight(context);
    double width = HeightWidth.screenWidth(context);

    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(height * 0.05),
              Image(
                height: height * 0.15,
                width: width * 010,
                image: AssetImage(AppImages.applogo),
              ),
              Text(
                "PandaLive",
                style: AppStyle.logoText.copyWith(fontSize: 25),
              ),
              Gap(height * 0.06),

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

              Gap(height * 0.03),
              Textfield0(
                labeltext: Text("Enter Your Email"),
                keyboardtypee: TextInputType.emailAddress,
              ),
              Gap(height * 0.026),
              Textfield0(
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
              Gap(height * 0.06),
              Image(image: AssetImage(AppImages.or)),
              Gap(height * 0.04),
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
              Gap(height * 0.04),
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
    );
  }
}
