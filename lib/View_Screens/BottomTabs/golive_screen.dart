import 'package:flutter/material.dart';
import 'package:pandalive/Utils/app_colours.dart';
import 'package:pandalive/Utils/app_images.dart';
import 'package:pandalive/Utils/constant.dart';
import 'package:pandalive/Widgets/Buttons/icontbutton0.dart';

class GoLiveScreen extends StatefulWidget {
  const GoLiveScreen({super.key});

  @override
  State<GoLiveScreen> createState() => _GoLiveScreenState();
}

class _GoLiveScreenState extends State<GoLiveScreen> {
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
            Container(
              height: 200, // increase size
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColours.iconcolours, width: 4),
              ),
              child: Center(
                child: Image.asset(
                  AppImages.liveIcon,
                  height: 120, // icon ke liye size
                  width: 120,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
