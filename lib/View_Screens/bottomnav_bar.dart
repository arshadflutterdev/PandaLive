import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pandalive/Utils/app_colours.dart';

class BottomnavBar extends StatefulWidget {
  const BottomnavBar({super.key});

  @override
  State<BottomnavBar> createState() => _BottomnavBarState();
}

class _BottomnavBarState extends State<BottomnavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColours.textfieldC,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColours.iconcolours,
        unselectedItemColor: Colors.white,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
        ],
      ),
    );
  }
}
