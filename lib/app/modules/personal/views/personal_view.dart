import 'package:flutter/material.dart';
import 'package:flutter_mini_framework/global.dart';
import 'package:get/get.dart';
import '../index.dart';

class PersonalPage extends GetView<PersonalController> {
  const PersonalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home_account".tr),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: (){
          },
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.search)
          ),
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.settings))
        ],
        backgroundColor: Global.getThemeColor(),
      ),
    );
  }
}
