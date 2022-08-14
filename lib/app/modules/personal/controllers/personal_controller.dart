import 'package:flutter_mini_framework/app/base/controller/base_controller.dart';

import '../index.dart';

class PersonalController extends BaseController<PersonalMode> {
  PersonalController(PersonalMode model) : super(model);
  final PersonalState state = PersonalState();
  @override
  void onReady() {
    super.onReady();
  }
}
