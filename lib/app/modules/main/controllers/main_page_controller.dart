import 'package:flutter/material.dart';
import 'package:flutter_mini_framework/app/modules/main/controllers/main_page_state.dart';
import 'package:flutter_mini_framework/app/routes/app_pages.dart';
import 'package:flutter_mini_framework/global.dart';
import 'package:get/get.dart';
import '../index.dart';

class MainPageController extends GetxController {
  final state = MainPageState();

  PageController? pageController;

  handleNavBarTap(int index) {
    if (index == state.page) return;
    // if (Global.isOfflineLogin && index != 0) {
    //   Get.toNamed(Routes.login('tab'));
    //   return;
    // }
    pageController!.jumpToPage(index);
  }

  handlePageChanged(int page) {
    state.page = page;
  }

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: state.page);
  }

  @override
  void dispose() {
    pageController!.dispose();
    super.dispose();
  }
}
