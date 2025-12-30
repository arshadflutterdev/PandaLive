import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:pandalive/Routes/app_routes.dart';
import 'package:pandalive/Utils/app_style.dart';
import 'package:pandalive/Utils/constant.dart';
import 'package:pandalive/Utils/app_images.dart';
import 'package:pandalive/Widgets/Buttons/elevatedbutton0.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double h = HeightWidth.screenHeight(context);
    double w = HeightWidth.screenWidth(context);
    return Scaffold(
      body: Container(
        height: h,
        width: w,

        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AppImages.bgImage),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(h * 0.06),
            SizedBox(
              height: h * 0.2,
              width: w * 02,
              child: Image(image: AssetImage(AppImages.applogo)),
            ),
            Text("PandaLive", style: AppStyle.logoText),
            Spacer(),
            Elevatedbutton0(
              w: w * 0.88,
              h: h * 0.065,

              bgColour: Colors.amber,
              onPressed: () {
                Get.toNamed(AppRoutes.signup);
              },
              text: 'Create Account',
            ),
            Gap(5),
            Text("Or", style: AppStyle.logoText.copyWith(fontSize: 18)),
            Gap(5),
            Elevatedbutton0(
              w: w * 0.88,
              h: h * 0.065,

              bgColour: Colors.grey,
              onPressed: () {
                Get.toNamed(AppRoutes.login);
              },
              text: 'Login',
            ),

            Gap(h * .06),
          ],
        ),
      ),
    );
  }
}
