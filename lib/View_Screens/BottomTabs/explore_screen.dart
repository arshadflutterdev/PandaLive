import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:pandalive/Controllers/explorer_controller.dart';
import 'package:pandalive/Routes/app_routes.dart';
import 'package:pandalive/Utils/app_style.dart';
import 'package:pandalive/Utils/constant.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  ExplorerController explorerController = ExplorerController();
  @override
  Widget build(BuildContext context) {
    double height = HeightWidth.screenHeight(context);
    double width = HeightWidth.screenWidth(context);
    return WillPopScope(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            "Arshad",
            style: AppStyle.logoText.copyWith(fontSize: 26),
          ),
          backgroundColor: Colors.black,
        ),
        body: GridView.builder(
          shrinkWrap: true,
          itemCount: explorerController.items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.97, // height vs width control
          ),
          itemBuilder: (context, index) {
            final item = explorerController.items[index];
            return Padding(
              padding: const EdgeInsets.only(left: 2, right: 2, bottom: 2),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(
                    AppRoutes.watchstream,
                    arguments: {
                      "name": item.name,
                      "view": item.view,
                      "image": item.images,
                      "country": item.country,
                      "hashtag": item.hashtag,
                    },
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: height * 0.16,
                        width: width,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(item.images),
                          ),
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Container(
                                  height: 20,
                                  padding: EdgeInsets.symmetric(horizontal: 2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: Colors.black.withOpacity(0.5),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Gap(1),
                                      Icon(
                                        CupertinoIcons.eye,
                                        size: 18,
                                        color: Colors.white,
                                      ),
                                      Gap(1.5),
                                      Text(
                                        item.view,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Gap(1),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 18,
                              backgroundImage: AssetImage(item.images),
                            ),
                            Gap(5),
                            Column(
                              children: [
                                Text(
                                  item.name,
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  item.country,
                                  style: TextStyle(color: Colors.amber),
                                ),
                              ],
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
        ),
      ),
      onWillPop: () async {
        return false;
      },
    );
  }
}
