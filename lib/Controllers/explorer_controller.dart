import 'package:get/get.dart';
import 'package:pandalive/Models/explorer_model.dart';

class ExplorerController extends GetxController {
  RxList<ExplorerModel> items = <ExplorerModel>[
    ExplorerModel(
      name: "James",
      images: "assets/images/boy1.jpg",
      view: "2k",
      country: "USA",
      hashtag: "joy with life",
    ),
    ExplorerModel(
      name: "Jenny",
      images: "assets/images/girl1.jpg",
      view: "229",
      country: "AUS",
      hashtag: "enjoy life",
    ),
    ExplorerModel(
      name: "Rohit",
      images: "assets/images/boy2.jpg",
      view: "110",
      country: "INDIA",
      hashtag: "love nature",
    ),
    ExplorerModel(
      name: "Quin",
      images: "assets/images/girls2.jpg",
      view: "3301",
      country: "Paris",
      hashtag: "Alone life",
    ),
    ExplorerModel(
      hashtag: "Smile can win",
      name: "Braint",
      images: "assets/images/boy3.jpg",
      view: "4210",
      country: "Dubai",
    ),
    ExplorerModel(
      hashtag: "Fashion",
      name: "Braint",
      images: "assets/images/boy3.jpg",
      view: "4210",
      country: "Dubai",
    ),
    ExplorerModel(
      hashtag: "Be happy",
      name: "James",
      images: "assets/images/boy1.jpg",
      view: "2k",
      country: "USA",
    ),
    ExplorerModel(
      hashtag: "Do loving",
      name: "Jenny",
      images: "assets/images/girl1.jpg",
      view: "229",
      country: "AUS",
    ),
    ExplorerModel(
      hashtag: "Love the things",
      name: "Rohit",
      images: "assets/images/boy2.jpg",
      view: "110",
      country: "INDIA",
    ),
    ExplorerModel(
      hashtag: "Enjoy your life",
      name: "Quin",
      images: "assets/images/girls2.jpg",
      view: "3301",
      country: "Paris",
    ),
    ExplorerModel(
      hashtag: "Do best things",
      name: "Braint",
      images: "assets/images/boy3.jpg",
      view: "4210",
      country: "Dubai",
    ),
    ExplorerModel(
      hashtag: "Start journey",
      name: "Braint",
      images: "assets/images/boy3.jpg",
      view: "4210",
      country: "Dubai",
    ),
  ].obs;
}
