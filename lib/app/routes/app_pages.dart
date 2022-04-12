import 'package:get/get.dart';

import '../modules/appDrawer/bindings/app_drawer_binding.dart';
import '../modules/appDrawer/views/app_drawer_view.dart';
import '../modules/dailyreport/bindings/dailyreport_binding.dart';
import '../modules/dailyreport/views/dailyreport_view.dart';
import '../modules/heartMonitor/bindings/heart_monitor_binding.dart';
import '../modules/heartMonitor/views/heart_monitor_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/measurement/bindings/measurement_binding.dart';
import '../modules/measurement/views/measurement_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';
import '../modules/signUp/bindings/sign_up_binding.dart';
import '../modules/signUp/views/sign_up_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.DAILYREPORT,
      page: () => DailyreportView(),
      binding: DailyreportBinding(),
    ),
    GetPage(
      name: _Paths.MEASUREMENT,
      page: () => MeasurementView(),
      binding: MeasurementBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.APP_DRAWER,
      page: () => AppDrawerView(),
      binding: AppDrawerBinding(),
    ),
    GetPage(
      name: _Paths.HEART_MONITOR,
      page: () => HeartMonitorView(),
      binding: HeartMonitorBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => SignUpView(),
      binding: SignUpBinding(),
    ),
  ];
}
