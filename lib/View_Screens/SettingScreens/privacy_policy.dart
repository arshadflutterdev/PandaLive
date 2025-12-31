import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pandalive/Utils/app_colours.dart';
import 'package:pandalive/Utils/app_style.dart';
import 'package:pandalive/Widgets/Buttons/icontbutton0.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
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
        title: Text(
          "Privacy Policy",
          style: AppStyle.logoText.copyWith(fontSize: 20),
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Privacy Policy",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Gap(10),
            Text(
              "Your privacy is important to us. This Privacy Policy explains how we collect, use, and protect your personal information when you use our app.",
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
            const Gap(20),
            Text(
              "1. Information We Collect",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Gap(10),
            Text(
              "We may collect personal information such as your name, email address, and usage data to improve our services and provide a personalized experience.",
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
            const Gap(20),
            Text(
              "2. How We Use Information",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Gap(10),
            Text(
              "We use the information collected to provide, maintain, and improve our services, communicate with users, and ensure the security of our platform.",
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
            const Gap(20),
            Text(
              "3. Data Security",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Gap(10),
            Text(
              "We implement appropriate technical and organizational measures to protect your data against unauthorized access, alteration, disclosure, or destruction.",
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
            const Gap(20),
            Text(
              "4. Changes to This Policy",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Gap(10),
            Text(
              "We may update this Privacy Policy from time to time. Users will be notified of any changes, and the latest version will always be available in the app.",
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
            const Gap(20),
            Text(
              "5. Contact Us",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Gap(10),
            Text(
              "If you have any questions about this Privacy Policy, please contact us at regolive0@gmail.com",
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
            const Gap(30),
          ],
        ),
      ),
    );
  }
}
