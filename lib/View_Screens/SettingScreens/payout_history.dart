import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pandalive/Controllers/payout_controller.dart';
import 'package:pandalive/Utils/app_colours.dart';
import 'package:pandalive/Utils/app_images.dart';
import 'package:pandalive/Utils/app_style.dart';
import 'package:pandalive/Utils/constant.dart';
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
    double height = HeightWidth.screenHeight(context);

    return Scaffold(
      backgroundColor: Colors.black,
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
          "Payout History",
          style: AppStyle.logoText.copyWith(fontSize: 18),
        ),
      ),
      body: ListView.builder(
        itemCount: payoutController.payoutItems.length,
        itemBuilder: (context, index) {
          final payout = payoutController.payoutItems[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
            child: Container(
              height: height * 0.10,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(AppImages.coinbg),
                ),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(payout.image),
                ),
                title: Text(payout.name, style: AppStyle.buttext),
                subtitle: Text(
                  payout.datetime,
                  style: TextStyle(color: Colors.black),
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      payout.dollars,
                      style: AppStyle.logoText.copyWith(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                    Text(payout.status, style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
