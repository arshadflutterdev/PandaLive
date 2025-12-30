import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pandalive/Routes/app_routes.dart';
import 'package:pandalive/Utils/constant.dart';
import 'package:pandalive/Widgets/Buttons/elevatedbutton0.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final List<TextEditingController> controllers = List.generate(
    6,
    (_) => TextEditingController(),
  );

  final List<FocusNode> focusNodes = List.generate(6, (_) => FocusNode());

  @override
  void dispose() {
    for (var c in controllers) {
      c.dispose();
    }
    for (var f in focusNodes) {
      f.dispose();
    }
    timer?.cancel();

    super.dispose();
  }

  Timer? timer;
  RxInt remainingsc = 120.obs;
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void verifyOtp() {
    String otp = controllers.map((c) => c.text).join();
    if (otp.length == 6) {
      timer?.cancel(); // stop timer
      print("OTP Verified: $otp");
      // Navigate to next screen here
      Get.toNamed(AppRoutes.newpassword);
    }
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (remainingsc.value == 0) {
        timer.cancel();
        Get.back();
      }

      remainingsc.value--;
    });
  }

  String get timerText {
    final minutes = remainingsc ~/ 60;
    final seconds = remainingsc % 60;
    return "$minutes:${seconds.toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context) {
    print("yes ui is building everytime");
    double height = HeightWidth.screenHeight(context);
    double width = HeightWidth.screenWidth(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Enter OTP",
              style: TextStyle(
                fontSize: 26,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Enter the 6-digit code sent to your email",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white70),
            ),
            Gap(10),
            Obx(
              () => Text(
                "Time remaining: $timerText",
                style: const TextStyle(color: Colors.redAccent, fontSize: 16),
              ),
            ),
            const SizedBox(height: 30),

            /// OTP Fields
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(6, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: SizedBox(
                    width: 45,
                    child: TextField(
                      cursorColor: Colors.white,
                      controller: controllers[index],
                      focusNode: focusNodes[index],
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                      decoration: InputDecoration(
                        counterText: '',
                        filled: true,
                        fillColor: Colors.white12,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      onChanged: (value) {
                        if (value.isNotEmpty && index < 5) {
                          focusNodes[index + 1].requestFocus();
                        } else if (value.isEmpty && index > 0) {
                          focusNodes[index - 1].requestFocus();
                        }
                      },
                    ),
                  ),
                );
              }),
            ),

            const SizedBox(height: 30),

            /// Verify Button
            Elevatedbutton0(
              w: width * 0.70,
              h: height * 0.07,
              bgColour: Colors.amber,
              onPressed: () {
                verifyOtp();
                String otp = controllers.map((c) => c.text).join();
                print("Entered OTP: $otp");
              },
              text: "Verify OTP",
            ),
            Gap(20),
          ],
        ),
      ),
    );
  }
}
