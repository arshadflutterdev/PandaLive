import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:pandalive/Routes/app_routes.dart';
import 'package:pandalive/Utils/app_images.dart';
import 'package:pandalive/Utils/app_style.dart';
import 'package:pandalive/Utils/constant.dart';
import 'package:pandalive/Widgets/Buttons/elevatedbutton0.dart';
import 'package:pandalive/Widgets/Buttons/icontbutton0.dart';
import 'package:pandalive/Widgets/Buttons/textbutton0.dart';

class YourStream extends StatefulWidget {
  const YourStream({super.key});

  @override
  State<YourStream> createState() => _YourStreamState();
}

class _YourStreamState extends State<YourStream> {
  @override
  Widget build(BuildContext context) {
    double height = HeightWidth.screenHeight(context);
    double width = HeightWidth.screenWidth(context);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,

        decoration: BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AppImages.girl2),
          ),
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
                          backgroundImage: AssetImage(AppImages.boy2),
                        ),
                        Gap(7),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Rohit",
                              style: AppStyle.logoText.copyWith(fontSize: 18),
                            ),

                            Text(
                              "#Enjoy life",
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
                                  "201",
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
                            backgroundColor: Colors.red,
                            shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Live",
                            style: TextStyle(color: Colors.white, fontSize: 16),
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
                      showDialog(
                        context: context,
                        builder: (context) {
                          return SizedBox(
                            child: AlertDialog(
                              backgroundColor: Colors.transparent,
                              content: Container(
                                height: height * 0.25,
                                width: width,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Are You Sure?",
                                      style: AppStyle.logoText.copyWith(
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      "This will end your stream",
                                      style: AppStyle.buttext.copyWith(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 5,
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              fixedSize: Size(width * 0.40, 30),
                                              textStyle: TextStyle(
                                                color: Colors.black,
                                              ),
                                              backgroundColor: Colors.white,
                                              shape: ContinuousRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            onPressed: () {
                                              Get.back();
                                            },
                                            child: Text(
                                              "Not Now",
                                              style: TextStyle(
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),

                                          Gap(5),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              fixedSize: Size(width * 0.40, 30),
                                              textStyle: TextStyle(
                                                color: Colors.white,
                                              ),
                                              backgroundColor: Colors.black
                                                  .withOpacity(0.8),
                                              shape: ContinuousRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            onPressed: () {
                                              Get.offAllNamed(
                                                AppRoutes.bottomnav,
                                              );
                                              Get.snackbar(
                                                "You Stream For",
                                                "02:20 mins",
                                                backgroundColor: Colors.white,
                                              );
                                            },
                                            child: Text(
                                              "End Stream",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    icon: Icon(Icons.close),
                  ),
                ],
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
                    onPressed: () async {
                      // await getMessage();
                    },
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 2,
              left: 10,
              right: width * 0.30,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Ali, 🔥🔥 Amazing bro"),
                    Text("Sara, Love this live 😍"),
                    Text("Ahmed, Where are you from?"),
                    Text("Zara, Big fan ❤️"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
