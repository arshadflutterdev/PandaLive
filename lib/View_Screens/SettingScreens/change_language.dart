import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pandalive/Utils/app_colours.dart';
import 'package:pandalive/Utils/app_style.dart';
import 'package:pandalive/Widgets/Buttons/icontbutton0.dart';

class ChangeLanguage extends StatefulWidget {
  const ChangeLanguage({super.key});

  @override
  State<ChangeLanguage> createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
  RxString isSelected = "English".obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: Iconbutton0(
          image: Icon(Icons.arrow_back_ios_new, color: AppColours.iconcolours),
          onPressed: () {
            Get.back();
          },
        ),
        title: FittedBox(
          child: Text(
            "Change App Language",
            style: AppStyle.logoText.copyWith(fontSize: 20),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Text(
              "Select your preferred language",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white70, fontSize: 18),
            ),
          ),
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isSelected.value == "English"
                        ? Colors.amber
                        : Colors.grey,
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    isSelected.value = "English"; // Update selection
                  },
                  child: Text(
                    "English",
                    style: TextStyle(
                      color: isSelected.value == "English"
                          ? Colors.black
                          : Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isSelected.value == "اللغة العربية"
                        ? Colors.amber
                        : Colors.grey,
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    isSelected.value = "اللغة العربية"; // Update selection
                  },
                  child: Text(
                    "اللغة العربية",
                    style: GoogleFonts.amiri(
                      color: isSelected.value == "اللغة العربية"
                          ? Colors.black
                          : Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            "You can change this anytime in settings",
            style: TextStyle(color: Colors.white38, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
