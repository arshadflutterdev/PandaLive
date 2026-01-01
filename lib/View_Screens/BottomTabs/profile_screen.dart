import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:pandalive/Routes/app_routes.dart';
import 'package:pandalive/Utils/app_colours.dart';
import 'package:pandalive/Utils/app_images.dart';
import 'package:pandalive/Utils/app_style.dart';
import 'package:pandalive/Utils/constant.dart';
import 'package:pandalive/Widgets/Buttons/elevatedbutton0.dart';
import 'package:pandalive/Widgets/Buttons/icontbutton0.dart';
import 'package:pandalive/Widgets/TextFields/textfield0.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  RxBool isSelected = false.obs;
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  RxBool isRemoved = false.obs;

  @override
  Widget build(BuildContext context) {
    final double height = HeightWidth.screenHeight(context);
    final double width = HeightWidth.screenWidth(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Gap(height * 0.05),
          CircleAvatar(radius: 65, backgroundImage: AssetImage(AppImages.boy2)),
          Gap(height * 0.010),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Mr.Rohit", style: AppStyle.logoText.copyWith(fontSize: 20)),
              Iconbutton0(
                image: Icon(Icons.edit_outlined, color: Colors.white),
                onPressed: () {},
              ),
            ],
          ),
          Text(
            "Smile often, laugh even louder",
            style: AppStyle.buttext.copyWith(
              color: AppColours.iconcolours,
              fontSize: 12,
            ),
          ),
          Gap(height * 0.020),
          TabBar(
            indicatorPadding: EdgeInsets.symmetric(horizontal: 2),
            indicatorSize: TabBarIndicatorSize.tab,
            dividerColor: Colors.black,
            indicatorColor: Colors.white,
            controller: tabController,
            tabs: [
              Column(
                children: [
                  Image(
                    height: height * 0.045,

                    color: Colors.white,
                    image: AssetImage(AppImages.followers),
                  ),
                  Gap(5),
                  Text(
                    "210",
                    style: AppStyle.buttext.copyWith(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "Followers",
                    style: AppStyle.buttext.copyWith(
                      color: AppColours.iconcolours,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),

              Column(
                children: [
                  Image(
                    height: height * 0.045,

                    color: Colors.white,
                    image: AssetImage(AppImages.following),
                  ),
                  Gap(5),
                  Text(
                    "02",
                    style: AppStyle.buttext.copyWith(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "Following",
                    style: AppStyle.buttext.copyWith(
                      color: AppColours.iconcolours,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),

              Column(
                children: [
                  Image(
                    height: height * 0.045,

                    // color: Colors.white,
                    image: AssetImage(AppImages.coins),
                  ),
                  Gap(5),
                  Text(
                    "0",
                    style: AppStyle.buttext.copyWith(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "Coins",
                    style: AppStyle.buttext.copyWith(
                      color: AppColours.iconcolours,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: 10,
                  ),
                  child: Column(
                    children: [
                      Gap(4),
                      Textfield0(
                        icons: Icon(
                          Icons.search,
                          color: AppColours.iconcolours,
                        ),
                        labeltext: Text("Search Followers"),
                        keyboardtypee: TextInputType.text,
                      ),
                      Expanded(
                        child: MediaQuery.removePadding(
                          context: context,
                          removeTop: true,

                          child: ListView.builder(
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Card(
                                color: AppColours.textfieldC,
                                child: ListTile(
                                  title: Text(
                                    "Mr Rohit",
                                    style: AppStyle.buttext.copyWith(
                                      color: AppColours.iconcolours,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "Pakistan",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  leading: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(AppImages.boy2),
                                  ),
                                  trailing: Obx(
                                    () => ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.amber,
                                        shape: ContinuousRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            15,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "Remove",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 2,
                  ),
                  child: Column(
                    children: [
                      Gap(4),
                      Textfield0(
                        icons: Icon(
                          Icons.search,
                          color: AppColours.iconcolours,
                        ),
                        labeltext: Text("Search Followings"),
                        keyboardtypee: TextInputType.text,
                      ),
                      Expanded(
                        child: MediaQuery.removePadding(
                          context: context,
                          removeTop: true,

                          child: ListView.builder(
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Card(
                                color: AppColours.textfieldC,
                                child: ListTile(
                                  title: Text(
                                    "Mr Rohit",
                                    style: AppStyle.buttext.copyWith(
                                      color: AppColours.iconcolours,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "USA",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  leading: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(AppImages.boy2),
                                  ),
                                  trailing: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.amber,
                                      shape: ContinuousRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "UnFollow",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 2,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(AppImages.coinbg),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Total Available Coins",
                                  style: AppStyle.buttext.copyWith(
                                    fontSize: 15,
                                  ),
                                ),
                                Text("546547", style: AppStyle.buttext),
                              ],
                            ),
                            Spacer(),
                            Image(image: AssetImage(AppImages.coins)),
                          ],
                        ),
                      ),
                      Gap(4),
                      Container(
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(AppImages.coinbg),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Last Received Coins",
                                  style: AppStyle.buttext.copyWith(
                                    fontSize: 15,
                                  ),
                                ),
                                Text("546", style: AppStyle.buttext),
                              ],
                            ),
                            Spacer(),
                            Image(image: AssetImage(AppImages.coins)),
                          ],
                        ),
                      ),
                      Gap(10),
                      Container(
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(AppImages.coinbg),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Spacer(),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Total \$ value",
                                  style: AppStyle.buttext.copyWith(
                                    fontSize: 15,
                                  ),
                                ),
                                Text("\$510.02", style: AppStyle.buttext),
                              ],
                            ),
                            Spacer(),
                            Image(image: AssetImage(AppImages.coins)),
                          ],
                        ),
                      ),
                      Gap(height * 0.010),
                      Elevatedbutton0(
                        w: double.infinity,
                        h: 30,
                        bgColour: AppColours.iconcolours,
                        onPressed: () {
                          Get.toNamed(AppRoutes.wallet);
                        },
                        text: "Radeem Now",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
