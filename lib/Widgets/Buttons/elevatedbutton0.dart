import 'package:flutter/material.dart';
import 'package:pandalive/Utils/app_style.dart';

class Elevatedbutton0 extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color bgColour;

  const Elevatedbutton0({
    super.key,
    required this.w,
    required this.h,
    required this.bgColour,
    required this.onPressed,
    required this.text,
  });

  final double w;
  final double h;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColour,
        fixedSize: Size(w, h),

        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      onPressed: onPressed,
      child: Text(text, style: AppStyle.buttext),
    );
  }
}
