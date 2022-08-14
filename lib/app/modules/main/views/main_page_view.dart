import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mini_framework/app/modules/community/index.dart';
import 'package:flutter_mini_framework/app/modules/home/index.dart';
import 'package:flutter_mini_framework/app/modules/personal/index.dart';
import 'package:flutter_mini_framework/app/modules/workbench/index.dart';
import 'package:flutter_mini_framework/common/langs/translation_service.dart';
import 'package:flutter_mini_framework/common/utils/utils.dart';
import 'package:flutter_mini_framework/global.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../index.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  State<MainPage> createState() => TabHomePageState();
}

class TabHomePageState extends State<MainPage> {
  @override
  void initState() {
    if (kDebugMode) {
      print(TranslationService.locale?.languageCode);
    }
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  MainPageController get controller => Get.find();

  /// 内容页
  Widget _buildPageView() {
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: controller.pageController,
      onPageChanged: controller.handlePageChanged,
      children: const <Widget>[
        HomePage(),
        CommunityPage(),
        WorkbenchPage(),
        PersonalPage(),
      ],
    );
  }

  /// 底部导航
  Widget _buildBottomNavigationBar() {
    List<BottomNavigationBarItem> _bottomItems = _createBottomItems();
    return Obx(
      () => BottomNavigationBar(
        items: _bottomItems,
        currentIndex: controller.state.page,
        backgroundColor: const Color(0xFFFFFEFF),
        unselectedItemColor: const Color(0xFF828489),
        selectedItemColor: Global.themeColor,
        type: BottomNavigationBarType.fixed,
        onTap: controller.handleNavBarTap,
        selectedFontSize: 10.sp,
        unselectedFontSize: 10.sp,
        iconSize: 32.w,
      ),
    );
  }

  List<BottomNavigationBarItem> _createBottomItems() {
    final Color themeColor = Global.getThemeColor();
    return <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: const Icon(
          Icons.home_outlined,
          color: Colors.grey,
        ),
        activeIcon: Icon(
          Icons.home_outlined,
          color: themeColor,
        ),
        label: 'tab_home'.tr,
      ),
      BottomNavigationBarItem(
        icon: const Icon(
          Icons.newspaper_outlined,
          color: Colors.grey,
        ),
        activeIcon: Icon(
          Icons.newspaper_outlined,
          color: themeColor,
        ),
        label: 'tab_information'.tr,
      ),
      BottomNavigationBarItem(
        icon: const Icon(
          Icons.work,
          color: Colors.grey,
        ),
        activeIcon: Icon(
          Icons.work,
          color: themeColor
        ),
        label: 'tab_workbench'.tr,
      ),
      BottomNavigationBarItem(
        icon: const Icon(
          Icons.person_outline,
          color: Colors.grey,
        ),
        activeIcon: Icon(
          Icons.person_outline,
          color: themeColor
        ),
        label: 'tab_personal'.tr,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: AppKit.exitApplication,
      child: Scaffold(
        body: _buildPageView(),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }
}
