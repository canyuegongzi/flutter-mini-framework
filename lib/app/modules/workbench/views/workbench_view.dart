import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mini_framework/global.dart';
import 'package:flutter_mini_framework/widget/layout/layout.dart';
import 'package:get/get.dart';
import '../index.dart';

class WorkbenchPage extends GetView<WorkbenchController> {
  const WorkbenchPage({Key? key}) : super(key: key);

  // Navigator.of(context).pushNamed('AboutMePage'),
  @override
  Widget build(BuildContext context) {
    /*return Scaffold(
      appBar: AppBar(
        title: Text("workbench_title".tr),
        centerTitle: true,
        // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   onPressed: (){
        //   },
        // ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.search)
          ),
          // IconButton(
          //     onPressed: (){},
          //     icon: const Icon(Icons.settings))
        ],
        backgroundColor: Global.getThemeColor(),
      ),
    );*/
    return UnFocusWrapper(
      CommonLayoutPage(
        appBar: AppBar(
          title: Text("workbench_title".tr),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: (){},
                icon: const Icon(Icons.search)
            ),
          ],
          backgroundColor: Global.getThemeColor(),
        ),
        _buildBody,
        margin: EdgeInsets.zero,
        backgroundColor: Colors.white,
        rootContext: context,
        resizeToAvoidBottomInset: false,
      ),
    );
  }

  Widget _buildBody(BuildContext ctx) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        _buildMiniItem(),
      ],
    );
  }

  /// 构建单个item
  Widget _buildMiniItem() {
    if (kDebugMode) {
      // print(controller.miniAppList[0]);
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Center(
          child: Image.network("https://qiniu.canyuegongzi.xyz/276FFF8CD5C2EDF21940F35D49240209.1651400499918.jpg")
        ),
        const Center(
          child: Text("小程序"),
        )
      ],
    );
  }
}
