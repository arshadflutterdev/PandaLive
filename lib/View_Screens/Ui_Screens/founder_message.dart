import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:pandalive/Routes/app_routes.dart';
import 'package:pandalive/Utils/app_colours.dart';
import 'package:pandalive/Utils/app_style.dart';
import 'package:pandalive/Utils/constant.dart';
import 'package:pandalive/Widgets/Buttons/elevatedbutton0.dart';

class FounderMessage extends StatefulWidget {
  const FounderMessage({super.key});

  @override
  State<FounderMessage> createState() => _FounderMessageState();
}

class _FounderMessageState extends State<FounderMessage> {
  void dialogshow() async {
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        double height = HeightWidth.screenHeight(context);
        double width = HeightWidth.screenWidth(context);
        return WillPopScope(
          child: Dialog(
            insetPadding: EdgeInsets.all(15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),

            backgroundColor: Colors.white,
            child: SizedBox(
              height: height * 0.75, // 60% of screen height
              width: width, // 85% of screen width
              child: Column(
                children: [
                  // Title
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      "Founder’s Message",
                      textAlign: TextAlign.center,
                      style: AppStyle.logoText.copyWith(
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ),

                  const Divider(),

                  // Scrollable content
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        """Welcome to our live streaming community!
                        
This app was built to connect people in real time, share moments instantly, and create a space where everyone can express themselves freely. Our goal is to bring creators and viewers closer through meaningful and engaging live experiences.
We are committed to building a safe, interactive, and high-quality platform where talent is discovered, voices are heard, and communities grow together.
Thank you for joining us and being part of this journey. Your support inspires us to keep improving and delivering the best live streaming experience for you.""",
                        textAlign: TextAlign.center,
                        style: AppStyle.buttext.copyWith(
                          fontSize: 15,
                          height: 1.5, // line height for readability
                        ),
                      ),
                    ),
                  ),

                  // Submit button
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Elevatedbutton0(
                      w: 200,
                      h: 30,
                      bgColour: AppColours.iconcolours,
                      onPressed: () => Get.offAllNamed(AppRoutes.bottomnav),
                      text: "Submit",
                    ),
                  ),
                ],
              ),
            ),
          ),
          onWillPop: () async {
            return false;
          },
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(Duration(seconds: 1), () {
        dialogshow();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(child: CircularProgressIndicator(color: Colors.white)),
      ),
      onWillPop: () async {
        return false;
      },
    );
  }
}
