import 'package:flutter/material.dart';
import 'package:pandalive/Utils/app_style.dart';

class Textbutton0 extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? textcolor;
  const Textbutton0({
    super.key,
    required this.text,
    required this.onPressed,
    this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: AppStyle.buttext.copyWith(
          color: textcolor,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
