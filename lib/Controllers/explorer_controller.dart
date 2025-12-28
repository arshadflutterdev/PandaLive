import 'package:get/get.dart';
import 'package:pandalive/Models/explorer_model.dart';

class ExplorerController extends GetxController {
  RxList<ExplorerModel> items = <ExplorerModel>[
    ExplorerModel(
      name: "James",
      images: "assets/images/boy1.jpg",
      view: "2k",
      country: "USA",
    ),
    ExplorerModel(
      name: "Jenny",
      images: "assets/images/girl1.jpg",
      view: "229",
      country: "AUS",
    ),
    ExplorerModel(
      name: "Rohit",
      images: "assets/images/boy2.jpg",
      view: "110",
      country: "INDIA",
    ),
    ExplorerModel(
      name: "Quin",
      images: "assets/images/girls2.jpg",
      view: "3301",
      country: "Paris",
    ),
    ExplorerModel(
      name: "Braint",
      images: "assets/images/boy3.jpg",
      view: "4210",
      country: "Dubai",
    ),
    ExplorerModel(
      name: "Braint",
      images: "assets/images/boy3.jpg",
      view: "4210",
      country: "Dubai",
    ),
    ExplorerModel(
      name: "James",
      images: "assets/images/boy1.jpg",
      view: "2k",
      country: "USA",
    ),
    ExplorerModel(
      name: "Jenny",
      images: "assets/images/girl1.jpg",
      view: "229",
      country: "AUS",
    ),
    ExplorerModel(
      name: "Rohit",
      images: "assets/images/boy2.jpg",
      view: "110",
      country: "INDIA",
    ),
    ExplorerModel(
      name: "Quin",
      images: "assets/images/girls2.jpg",
      view: "3301",
      country: "Paris",
    ),
    ExplorerModel(
      name: "Braint",
      images: "assets/images/boy3.jpg",
      view: "4210",
      country: "Dubai",
    ),
    ExplorerModel(
      name: "Braint",
      images: "assets/images/boy3.jpg",
      view: "4210",
      country: "Dubai",
    ),
  ].obs;
}
