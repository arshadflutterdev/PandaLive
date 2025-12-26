import 'package:flutter/widgets.dart';

class HeightWidth {
  // Get screen height
  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  // Get screen width
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}
