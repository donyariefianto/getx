import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../routes/app_pages.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  logout() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String>? users = prefs.getStringList('users');
    print(users);
    await prefs.remove('users');
    Get.offAllNamed(Routes.LOGIN);
  }
}
