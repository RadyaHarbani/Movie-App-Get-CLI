part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const SPLASH_SCREEN = _Paths.SPLASH_SCREEN;
  static const ON_BOARDING_PAGE = _Paths.ON_BOARDING_PAGE;
  static const REGISTER_PAGE = _Paths.REGISTER_PAGE;
  static const PROFILE_PAGE = _Paths.PROFILE_PAGE;
  static const HISTORY_PAGE = _Paths.HISTORY_PAGE;
  static const BALAP = _Paths.BALAP;
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  static const SPLASH_SCREEN = '/splash-screen';
  static const ON_BOARDING_PAGE = '/on-boarding-page';
  static const REGISTER_PAGE = '/register-page';
  static const PROFILE_PAGE = '/profile-page';
  static const HISTORY_PAGE = '/history-page';
  static const BALAP = '/balap';
}
