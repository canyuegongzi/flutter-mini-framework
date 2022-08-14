import 'package:flutter_mini_framework/app/base/controller/base_controller.dart';
import '../index.dart';

class CommunityController extends BaseController<CommunityModel> {
  final classifyState = CommunityState();

  CommunityController(CommunityModel model) : super(model);

  @override
  void onReady() {}
}
