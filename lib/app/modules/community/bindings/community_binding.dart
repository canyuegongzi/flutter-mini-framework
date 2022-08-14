import 'package:get/get.dart';
import '../index.dart';

class CommunityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CommunityModel());
    Get.lazyPut(
      () => CommunityController(Get.find<CommunityModel>()),
    );
  }
}
