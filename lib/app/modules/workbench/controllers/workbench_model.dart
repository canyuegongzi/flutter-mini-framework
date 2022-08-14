import 'package:flutter_mini_framework/app/base/base_model.dart';

class WorkbenchModel extends BaseModel {}

/// h5 版本模型
class MiniH5Model extends BaseModel {
  final String appId;
  final String appName;
  final String appVersion;
  final String appLogo;
  final String appUpdate;
  final String remoteCdn;
  final String remoteVersion;
  final String remoteUpdate;

  MiniH5Model({
    required this.appId,
    required this.appName,
    required this.appVersion,
    required this.appLogo,
    required this.appUpdate,
    required this.remoteCdn,
    required this.remoteVersion,
    required this.remoteUpdate,
  });

}
