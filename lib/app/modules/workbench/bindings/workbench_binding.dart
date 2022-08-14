import '../index.dart';
import 'package:get/get.dart';

class WorkbenchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WorkbenchModel());
    Get.lazyPut(() => WorkbenchController(Get.find<WorkbenchModel>()));
  }
}
