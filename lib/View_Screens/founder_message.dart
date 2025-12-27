import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

class FounderMessage extends StatefulWidget {
  const FounderMessage({super.key});

  @override
  State<FounderMessage> createState() => _FounderMessageState();
}

class _FounderMessageState extends State<FounderMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.defaultDialog();
          },
          child: Text("alert"),
        ),
      ),
    );
  }
}
