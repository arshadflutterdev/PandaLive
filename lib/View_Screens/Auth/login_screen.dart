import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pandalive/Utils/app_style.dart';
import 'package:pandalive/Utils/constant.dart';
import 'package:pandalive/Utils/app_images.dart';
import 'package:pandalive/Widgets/Buttons/textbutton0.dart';
import 'package:pandalive/Widgets/TextFields/textfield0.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final double heigth = HeightWidth.screenHeight(context);
    final double width = HeightWidth.screenWidth(context);

    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            Gap(heigth * 0.05),
            Image(
              height: heigth * 0.15,
              width: width * 010,
              image: AssetImage(AppImages.applogo),
            ),
            Text("PandaLive", style: AppStyle.logoText.copyWith(fontSize: 25)),
            Gap(heigth * 0.06),

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

            Gap(heigth * 0.03),
            Textfield0(
              labeltext: Text("Enter Your Email"),
              keyboardtypee: TextInputType.emailAddress,
            ),
            Gap(heigth * 0.026),
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
            Gap(heigth * 0.08),
            Image(image: AssetImage(AppImages.or)),
            Gap(heigth * 0.04),
          ],
        ),
      ),
    );
  }
}
