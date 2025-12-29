import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:pandalive/Utils/app_images.dart';
import 'package:pandalive/Utils/app_style.dart';
import 'package:pandalive/Utils/constant.dart';
import 'package:pandalive/Widgets/Buttons/elevatedbutton0.dart';
import 'package:pandalive/Widgets/Buttons/icontbutton0.dart';
import 'package:pandalive/Widgets/TextFields/textfield0.dart';

class WatchStream extends StatefulWidget {
  const WatchStream({super.key});

  @override
  State<WatchStream> createState() => _WatchStreamState();
}

class _WatchStreamState extends State<WatchStream> {
  TextEditingController messageController = TextEditingController();
  //function to store message in sharedprefrence
  Future<void> message() async {}
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
        child: Stack(
          children: [
            Positioned(
              top: height * 0.04,
              left: width * 0.025,
              right: width * 0.025,
              child: Row(
                children: [
                  Container(
                    // height: height * 0.10,
                    // width: width * 0.50,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
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
                        Gap(7),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "$name",
                              style: AppStyle.logoText.copyWith(fontSize: 18),
                            ),

                            Text(
                              hashtag,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(CupertinoIcons.eye, color: Colors.white),
                                Gap(4),
                                Text(
                                  view,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                Gap(4),
                                Text(
                                  "Viewers",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "follow",
                            style: TextStyle(color: Colors.red, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.black.withOpacity(0.6),
                    ),
                    color: Colors.white,

                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Icons.close),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: height * 0.025,
              left: width * 0.01,
              right: width * 0.01,
              child: Textfield0(
                controller: messageController,
                suffixx: Iconbutton0(
                  image: Icon(Icons.send, color: Colors.white, size: 39),
                  onPressed: () {},
                ),
                labeltext: Text("Say something"),
                keyboardtypee: TextInputType.text,
              ),
            ),
            Positioned(
              bottom: height * 0.12,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Iconbutton0(
                    image: Image(image: AssetImage(AppImages.share)),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
