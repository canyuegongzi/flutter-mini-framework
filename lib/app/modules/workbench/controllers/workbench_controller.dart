import 'package:flutter_mini_framework/app/base/controller/base_controller.dart';
import 'package:get/get.dart';

import '../index.dart';

class WorkbenchController extends BaseController<WorkbenchModel> {
  WorkbenchController(WorkbenchModel model) : super(model);

  final miniAppList = <MiniH5Model>[].obs;

  @override
  void onInit() {
    super.onInit();
    getMiniAppList();
  }

  /// 获取小程序
  void getMiniAppList() async {
    for (int i = 1; i <= 20; i++) {
      miniAppList.add(
          MiniH5Model(
            appId: i.toString(),
            appLogo: 'http://qiniu.canyuegongzi.xyz/276FFF8CD5C2EDF21940F35D49240209.1651400499918.jpg',
            appName: '葫芦商城',
            appVersion: '',
            appUpdate: '',
            remoteCdn: '',
            remoteVersion: '',
            remoteUpdate: '',
          )
      );
    }

  }

}
