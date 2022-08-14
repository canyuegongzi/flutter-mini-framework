import 'package:flutter_mini_framework/app/modules/home/index.dart';
import 'package:flutter_mini_framework/app/modules/main/index.dart';
import 'package:flutter_mini_framework/app/modules/mini-h5/index.dart';
import 'package:get/get.dart';

import '../modules/webview/index.dart';
import '../modules/welcome/index.dart';
part 'app_routes.dart';

class AppPages {
  static const initial = Routes.initial;
  static const home = Routes.home;
  static const main = Routes.main;

  static final List<GetPage> routes = [
    GetPage(
      name: _Paths.initial,
      page: () => const WelcomePage(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.main,
      page: () => const MainPage(),
      binding: MainPageBinding(),
    ),
    GetPage(
      name: _Paths.customWebView,
      page: () => CustomWebPage(),
      binding: CustomWebViewBinding(),
    ),
    GetPage(
      name: _Paths.customWebView,
      page: () => const MiniH5Page(),
      binding: MiniH5PageBinding(),
    ),

  ];
}
