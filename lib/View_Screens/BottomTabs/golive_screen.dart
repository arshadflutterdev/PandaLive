import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:pandalive/Routes/app_routes.dart';
import 'package:pandalive/Utils/app_colours.dart';
import 'package:pandalive/Utils/app_images.dart';
import 'package:pandalive/Utils/app_style.dart';
import 'package:pandalive/Utils/constant.dart';
import 'package:pandalive/Widgets/Buttons/elevatedbutton0.dart';
import 'package:pandalive/Widgets/Buttons/icontbutton0.dart';
import 'package:pandalive/Widgets/TextFields/textfield0.dart';

class GoLiveScreen extends StatefulWidget {
  const GoLiveScreen({super.key});

  @override
  State<GoLiveScreen> createState() => _GoLiveScreenState();
}

class _GoLiveScreenState extends State<GoLiveScreen> {
  RxBool selectedValue = false.obs;
  @override
  Widget build(BuildContext context) {
    final double height = HeightWidth.screenHeight(context);
    final double width = HeightWidth.screenWidth(context);
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AppImages.livebg),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gap(50),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: Colors.black.withOpacity(0.85),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      contentPadding: const EdgeInsets.all(16),
                      content: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Show off your talent and let the real you shine, but do not stream.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Gap(12),

                            Row(
                              children: [
                                Icon(Icons.block, color: Colors.white),
                                Gap(6),
                                Text(
                                  "Nudity / Pornography",
                                  style: AppStyle.buttext.copyWith(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Gap(6),

                            Row(
                              children: [
                                Icon(Icons.block, color: Colors.white),
                                Gap(6),
                                Text(
                                  "Bullying or Hate Speech",
                                  style: AppStyle.buttext.copyWith(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Gap(6),

                            Row(
                              children: [
                                Icon(Icons.block, color: Colors.white),
                                Gap(6),
                                Text(
                                  "Harming Minors",
                                  style: AppStyle.buttext.copyWith(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Gap(6),

                            Row(
                              children: [
                                Icon(Icons.block, color: Colors.white),
                                Gap(6),
                                Text(
                                  "Illegal Activity",
                                  style: AppStyle.buttext.copyWith(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Gap(6),

                            Row(
                              children: [
                                Icon(Icons.block, color: Colors.white),
                                Gap(6),
                                Text(
                                  "Violence / Self-harm",
                                  style: AppStyle.buttext.copyWith(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Gap(height * 0.020),
                            Obx(
                              () => Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Checkbox(
                                    checkColor: Colors.white,
                                    activeColor: Colors.green,
                                    focusColor: Colors.white,
                                    value: selectedValue.value,
                                    onChanged: (newValue) {
                                      selectedValue.value = newValue!;
                                    },
                                  ),
                                  Expanded(
                                    child: Text(
                                      "I agree to follow the Terms and Conditions and community guidelines.",
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.8),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Gap(height * 0.015),
                            Center(
                              child: Elevatedbutton0(
                                w: 120,
                                h: 20,
                                bgColour: Colors.amber,
                                onPressed: () {
                                  Get.toNamed(AppRoutes.yourstream);
                                },
                                text: "Got it",
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },

              child: Container(
                height: 150, // increase size
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColours.iconcolours, width: 4),
                ),
                child: Center(
                  child: Image.asset(
                    AppImages.liveIcon,
                    height: 140, // icon ke liye size
                    width: 140,
                  ),
                ),
              ),
            ),
            Gap(10),
            Text("Go Live Now", style: AppStyle.logoText),
          ],
        ),
      ),
    );
  }
}
