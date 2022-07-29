import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    validate();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void validate() async {
    final prefs = await SharedPreferences.getInstance();
    // final Future<SharedPreferences> prefs = SharedPreferences.getInstance();
    final List<String>? users = prefs.getStringList('users');
    print(users);
    Future.delayed(const Duration(milliseconds: 3000), () {
      if (users != null) {
        Get.offAllNamed(Routes.HOME);
      } else {
        Get.offAllNamed(Routes.LOGIN);
      }
    });
  }
}
