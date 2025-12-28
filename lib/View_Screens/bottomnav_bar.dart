import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pandalive/Utils/app_colours.dart';
import 'package:pandalive/Utils/app_images.dart';
import 'package:pandalive/View_Screens/BottomTabs/explore_screen.dart';
import 'package:pandalive/View_Screens/BottomTabs/golive_screen.dart';
import 'package:pandalive/View_Screens/BottomTabs/profile_screen.dart';

class BottomnavBar extends StatefulWidget {
  const BottomnavBar({super.key});

  @override
  State<BottomnavBar> createState() => _BottomnavBarState();
}

class _BottomnavBarState extends State<BottomnavBar> {
  List<Widget> screenlist = [ExploreScreen(), GoLiveScreen(), ProfileScreen()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenlist[currentIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        backgroundColor: AppColours.textfieldC,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColours.iconcolours,
        unselectedItemColor: Colors.white,

        items: [
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage(AppImages.explore),
              color: currentIndex == 0 ? AppColours.iconcolours : Colors.white,
            ),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage(AppImages.golive),
              color: currentIndex == 1 ? AppColours.iconcolours : Colors.white,
            ),
            label: "GoLive",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person,
              color: currentIndex == 2 ? AppColours.iconcolours : Colors.white,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
