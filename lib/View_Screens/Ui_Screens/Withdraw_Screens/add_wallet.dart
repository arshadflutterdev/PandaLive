import 'package:flutter/material.dart';
import 'package:pandalive/Utils/app_images.dart';

class AddWallet extends StatefulWidget {
  const AddWallet({super.key});

  @override
  State<AddWallet> createState() => _AddWalletState();
}

class _AddWalletState extends State<AddWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [Image(image: AssetImage(AppImages.paypal))]),
    );
  }
}
