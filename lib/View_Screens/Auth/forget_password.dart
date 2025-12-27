import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:pandalive/Routes/app_routes.dart';
import 'package:pandalive/Utils/app_images.dart';
import 'package:pandalive/Utils/app_style.dart';
import 'package:pandalive/Utils/constant.dart';
import 'package:pandalive/Widgets/Buttons/elevatedbutton0.dart';
import 'package:pandalive/Widgets/Buttons/icontbutton0.dart';
import 'package:pandalive/Widgets/Buttons/textbutton0.dart';
import 'package:pandalive/Widgets/TextFields/textfield0.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = HeightWidth.screenHeight(context);
    double width = HeightWidth.screenWidth(context);

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Forget Password?",
                style: AppStyle.logoText.copyWith(fontSize: 30),
              ),
              Gap(height * 0.03),

              Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "Enter your email below and we’ll help you recover your account",
                  style: AppStyle.buttext.copyWith(
                    fontSize: 18,
                    letterSpacing: 1,
                    color: Colors.white,
                  ),
                ),
              ),

              Gap(height * 0.04),
              Textfield0(
                controller: emailController,
                labeltext: Text("Enter Your Email"),
                keyboardtypee: TextInputType.emailAddress,
              ),
              Gap(height * 0.05),
              Elevatedbutton0(
                w: width * 0.88,
                h: height * 0.065,

                bgColour: Colors.amber,
                onPressed: () {
                  Get.toNamed(AppRoutes.otp);
                },
                text: 'Get Recovery Code',
              ),
            ],
          ),
        ),
      ),
      onWillPop: () async {
        return false;
      },
    );
  }
}
