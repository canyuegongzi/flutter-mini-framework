import 'package:flutter_mini_framework/app/modules/main/controllers/main_page_controller.dart';
import 'package:get/get.dart';

import '../index.dart';

class MainPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainPageController>(
      () => MainPageController(),
    );
  }
}
