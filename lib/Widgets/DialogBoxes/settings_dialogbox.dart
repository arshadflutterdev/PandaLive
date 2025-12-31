import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pandalive/Utils/app_style.dart';
import 'package:pandalive/Utils/constant.dart';

class SettingsDialogbox extends StatelessWidget {
  final List items;
  final VoidCallback onPressed;
  const SettingsDialogbox({
    super.key,
    required this.items,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    double height = HeightWidth.screenHeight(context);
    double width = HeightWidth.screenWidth(context);
    return AlertDialog(
      backgroundColor: Colors.transparent,
      content: Container(
        height: height * 0.40,
        width: width,
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final settigs = items[index];
            print("here is setting data ${settigs}");
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: GestureDetector(
                onTap: onPressed,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(5),
                    Image(
                      color: Colors.white,
                      image: AssetImage(settigs.image),
                    ),
                    Gap(15),
                    Expanded(
                      child: Text(
                        settigs.text,
                        style: AppStyle.buttext.copyWith(
                          color: Colors.white,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
