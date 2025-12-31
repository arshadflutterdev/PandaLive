import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pandalive/Controllers/payout_controller.dart';
import 'package:pandalive/Utils/app_images.dart';
import 'package:pandalive/Utils/app_style.dart';
import 'package:pandalive/Widgets/Buttons/icontbutton0.dart';

class PayoutHistory extends StatefulWidget {
  const PayoutHistory({super.key});

  @override
  State<PayoutHistory> createState() => _PayoutHistoryState();
}

class _PayoutHistoryState extends State<PayoutHistory> {
  PayoutController payoutController = PayoutController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: Iconbutton0(
          image: Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          "Payout History",
          style: AppStyle.logoText.copyWith(fontSize: 18),
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(AppImages.coinbg),
              ),
            ),
          );
        },
      ),
    );
  }
}
