import 'package:flutter/material.dart';
import 'package:pandalive/Utils/app_style.dart';
import 'package:pandalive/Utils/app_colours.dart';

class Textfield0 extends StatelessWidget {
  final Widget labeltext;
  final TextEditingController? controller;
  final Widget? icons;
  final Widget? suffixx;
  final TextInputType keyboardtypee;

  const Textfield0({
    super.key,
    required this.labeltext,
    this.controller,
    this.icons,
    this.suffixx,
    required this.keyboardtypee,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardtypee,
      controller: controller,

      minLines: 1,
      maxLines: 10,
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white, fontSize: 16, letterSpacing: 1),
      decoration: InputDecoration(
        label: labeltext,

        labelStyle: AppStyle.buttext.copyWith(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.normal,
        ),

        prefixIcon: icons,
        suffixIcon: suffixx,
        filled: true,
        fillColor: AppColours.textfieldC,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.red),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColours.textfieldC),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}
