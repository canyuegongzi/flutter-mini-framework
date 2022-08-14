import '../index.dart';
import 'package:get/get.dart';

class MiniH5PageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MiniH5PageModel());
    Get.lazyPut(() => MiniH5PageController(Get.find<MiniH5PageModel>()));
  }
}
