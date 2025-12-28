import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pandalive/Utils/app_style.dart';
import 'package:pandalive/Utils/constant.dart';

class WatchStream extends StatefulWidget {
  const WatchStream({super.key});

  @override
  State<WatchStream> createState() => _WatchStreamState();
}

class _WatchStreamState extends State<WatchStream> {
  @override
  Widget build(BuildContext context) {
    final double height = HeightWidth.screenHeight(context);
    final double width = HeightWidth.screenWidth(context);
    final arg = Get.arguments as Map<String, dynamic>;
    final name = arg["name"];
    final view = arg["view"];
    final image = arg["image"];
    final country = arg["country"];
    final hashtag = arg["hashtag"];
    return Scaffold(
      body: Container(
        height: height,
        width: width,

        decoration: BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 8),
              child: Row(
                children: [
                  Container(
                    height: height * 0.10,
                    // width: width * 0.50,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(image),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "@$name",
                              style: AppStyle.logoText.copyWith(fontSize: 20),
                            ),
                            Text(
                              "#Love me like you do",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            Text(hashtag),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
