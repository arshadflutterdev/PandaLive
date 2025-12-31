import 'package:get/get.dart';
import 'package:pandalive/Models/setting_model.dart';
import 'package:pandalive/Utils/app_images.dart';

class SettingsController extends GetxController {
  RxList<SettingModel> items = <SettingModel>[
    SettingModel(image: AppImages.payout, text: 'Payout History'),
    SettingModel(image: AppImages.privicy, text: "Privacy Policy"),
    SettingModel(image: AppImages.aboutus, text: "About Us"),
    SettingModel(image: AppImages.logout, text: "Logout"),
  ].obs;
}
