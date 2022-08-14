import 'package:flutter/material.dart';
import 'package:flutter_mini_framework/widget/easy_refresh/src/empty_result_widget.dart';
import 'package:flutter_mini_framework/widget/loading/loading_dialog.dart';
import 'package:get/get.dart';
import 'controller/base_controller.dart';
import 'model/enum.dart';

class PageWidget<T extends BaseController> extends GetWidget<T> {
  const PageWidget(this.body, {Key? key}) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      EmptyState state = controller.pageState.emptyState;
      if (state == EmptyState.progress) {
        return const LoadingDialog();
      } else if (state == EmptyState.normal) {
        return body;
      } else if (state == EmptyState.empty) {
        return EmptyResultWidget(
          icon: 'ic_search_empty',
          text: ''.tr,
          hint: ''.tr,
        );
      } else if (state == EmptyState.netError) {
        return EmptyResultWidget(
          icon: 'ic_search_empty',
          text: ''.tr,
          hint: ''.tr,
        );
      }
      return body;
    });
  }
}
