part of 'app_pages.dart';

abstract class Routes {
  static const initial = _Paths.initial;
  static const home = _Paths.home;
  static const main = _Paths.main;
  static const miniH5 = _Paths.miniH5;
  static login(String from) => '${_Paths.login}/$from';
  static const customWebView = _Paths.customWebView;
}

abstract class _Paths {
  static const initial = '/';
  static const customWebView = '/customWebView';
  static const login = '/login';
  static const main = '/main';
  static const home = '/home';
  static const miniH5 = '/miniH5';
}
