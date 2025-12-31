import 'package:get/get.dart';
import 'package:pandalive/Models/payout_model.dart';

class PayoutController extends GetxController {
  RxList<PayoutModel> payoutItems = <PayoutModel>[
    PayoutModel(
      dollars: "100\$",
      status: "Requested",
      image: "assets/images/boy1.jpg",
      name: "James",
      datetime: "01-02-2026 : 8:24:40",
    ),
    PayoutModel(
      dollars: "50\$",
      image: "assets/images/boy1.jpg",
      name: "James",
      datetime: "05-02-2026 : 10:14:40",
      status: "Completed",
    ),
    PayoutModel(
      dollars: "240\$",
      status: "Completed",
      image: "assets/images/boy1.jpg",
      name: "James",
      datetime: "05-02-2026 : 10:14:40",
    ),
  ].obs;
}
