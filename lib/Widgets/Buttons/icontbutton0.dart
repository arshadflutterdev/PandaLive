import 'package:flutter/material.dart';

class Iconbutton0 extends StatelessWidget {
  final Widget image;
  final VoidCallback onPressed;
  const Iconbutton0({super.key, required this.image, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: image);
  }
}
