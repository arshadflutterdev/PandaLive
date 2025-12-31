import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:pandalive/Utils/app_images.dart';
import 'package:pandalive/Utils/app_style.dart';
import 'package:pandalive/Utils/constant.dart';
import 'package:pandalive/Widgets/TextFields/textfield0.dart';

class AddWallet extends StatefulWidget {
  const AddWallet({super.key});

  @override
  State<AddWallet> createState() => _AddWalletState();
}

class _AddWalletState extends State<AddWallet> {
  @override
  Widget build(BuildContext context) {
    final double height = HeightWidth.screenHeight(context);

    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// PayPal Logo
            Center(
              child: Image(
                height: height * 0.1,
                image: AssetImage(AppImages.paypal),
              ),
            ),

            Gap(height * 0.04),

            /// PayPal Email
            Text(
              "PayPal Email Address",
              style: AppStyle.buttext.copyWith(fontSize: 16),
            ),
            const Gap(6),
            Textfield0(
              labeltext: const Text("example@email.com"),
              keyboardtypee: TextInputType.emailAddress,
            ),

            Gap(height * 0.03),

            /// Withdraw Amount
            Text(
              "Withdraw Amount",
              style: AppStyle.buttext.copyWith(fontSize: 16),
            ),
            const Gap(6),
            Textfield0(
              labeltext: const Text("Enter amount"),
              keyboardtypee: TextInputType.number,
              // prefixx: const Text("\$ "),
            ),

            Gap(height * 0.02),

            /// Info Text
            Text(
              "• Make sure your PayPal email is correct\n"
              "• Withdrawals may take 1–3 business days",
              style: AppStyle.buttext.copyWith(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),

            const Spacer(),

            /// Withdraw Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Withdraw API
                  Get.snackbar(
                    "Congratulations",
                    "Withdraw requist sumited Successfully",
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "Withdraw Now",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
