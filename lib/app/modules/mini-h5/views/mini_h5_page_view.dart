import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../index.dart';

class MiniH5Page extends GetView<MiniH5PageController> {
  const MiniH5Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "工作台内容"
      ),
    );
  }
}
