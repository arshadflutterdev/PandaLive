import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pandalive/Utils/app_colours.dart';
import 'package:pandalive/Utils/app_style.dart';
import 'package:pandalive/Widgets/Buttons/icontbutton0.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
          "About Us",
          style: AppStyle.logoText.copyWith(fontSize: 22),
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About Us",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Gap(10),
            Text(
              "Welcome to PandaLive! We are a live streaming platform designed to connect creators with their audiences in real-time. Our goal is to provide a seamless, interactive, and entertaining experience for both streamers and viewers.",
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
            const Gap(20),
            Text(
              "Our Mission",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Gap(10),
            Text(
              "Our mission is to empower creators by providing them with the tools and support needed to grow their communities, share their content, and monetize their skills while keeping viewers engaged and entertained.",
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
            const Gap(20),
            Text(
              "Our Vision",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Gap(10),
            Text(
              "We envision a global platform where creativity knows no bounds, where anyone can share their talent, and everyone can enjoy authentic, interactive live content.",
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
            const Gap(20),
            Text(
              "Contact Us",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Gap(10),
            Text(
              "If you have any questions, suggestions, or feedback, feel free to reach out to us at regolive0@gmail.com . We’d love to hear from you!",
              style: TextStyle(fontSize: 16, color: Colors.white70),
            ),
            const Gap(30),
          ],
        ),
      ),
    );
  }
}
