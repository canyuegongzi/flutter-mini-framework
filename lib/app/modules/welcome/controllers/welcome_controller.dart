import 'package:flutter_mini_framework/app/base/controller/base_controller.dart';
import 'package:flutter_mini_framework/app/routes/app_pages.dart';
import 'package:flutter_mini_framework/global.dart';
import 'package:get/get.dart';
import '../index.dart';

class WelcomeController extends BaseController<WelcomeModel> {
  WelcomeController(WelcomeModel model) : super(model);

  @override
  Future<void> onReady() async {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 1000), () async {
      Global.saveAlreadyOpen();
      Get.offAndToNamed(
        Routes.login('welcome'),
        arguments: {'canBack': false},
      );
    });
  }
}
