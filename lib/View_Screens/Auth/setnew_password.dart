import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pandalive/Routes/app_routes.dart';
import 'package:pandalive/Utils/app_style.dart';
import 'package:pandalive/Utils/constant.dart';
import 'package:pandalive/Widgets/Buttons/elevatedbutton0.dart';
import 'package:pandalive/Widgets/Buttons/icontbutton0.dart';
import 'package:pandalive/Widgets/TextFields/textfield0.dart';

class SetnewPassword extends StatefulWidget {
  const SetnewPassword({super.key});

  @override
  State<SetnewPassword> createState() => _SetnewPasswordState();
}

class _SetnewPasswordState extends State<SetnewPassword> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confrimPassword = TextEditingController();

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
              Text("Arshad!", style: AppStyle.logoText.copyWith(fontSize: 30)),
              Gap(height * 0.02),

              Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "Create new password for your account",
                  style: AppStyle.buttext.copyWith(
                    fontSize: 16,
                    letterSpacing: 1,
                    color: Colors.white,
                  ),
                ),
              ),

              Gap(height * 0.03),
              Textfield0(
                controller: passwordController,
                labeltext: Text("Enter Password"),
                keyboardtypee: TextInputType.emailAddress,
              ),
              Gap(height * 0.01),
              Textfield0(
                controller: confrimPassword,
                labeltext: Text("Confirm Password"),
                keyboardtypee: TextInputType.emailAddress,
              ),
              Gap(height * 0.04),
              Elevatedbutton0(
                w: width * 0.88,
                h: height * 0.065,

                bgColour: Colors.amber,
                onPressed: () {
                  Get.offNamed(AppRoutes.login);
                },
                text: 'Submit NewPassword',
              ),
            ],
          ),
        ),
      ),
      onWillPop: () async {
        return false;
      },
    );
    ;
  }
}
