import 'package:flutter/material.dart';
import 'package:pandalive/Utils/app_images.dart';
import 'package:pandalive/Utils/constant.dart';

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
      ),
    );
  }
}
