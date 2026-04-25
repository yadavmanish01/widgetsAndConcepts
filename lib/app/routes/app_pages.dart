import 'package:get/get.dart';

import '../modules/Splash/bindings/splash_binding.dart';
import '../modules/Splash/views/splash_view.dart';
import '../modules/computepage/bindings/computepage_binding.dart';
import '../modules/computepage/views/computepage_view.dart';
import '../modules/flutterkeys/bindings/flutterkeys_binding.dart';
import '../modules/flutterkeys/pagestoragekeyexample/bindings/pagestoragekeyexample_binding.dart';
import '../modules/flutterkeys/pagestoragekeyexample/keyexample1/bindings/keyexample1_binding.dart';
import '../modules/flutterkeys/pagestoragekeyexample/keyexample1/views/keyexample1_view.dart';
import '../modules/flutterkeys/pagestoragekeyexample/keyexample2/bindings/keyexample2_binding.dart';
import '../modules/flutterkeys/pagestoragekeyexample/keyexample2/views/keyexample2_view.dart';
import '../modules/flutterkeys/pagestoragekeyexample/views/pagestoragekeyexample_view.dart';
import '../modules/flutterkeys/uniquekeyPage/bindings/uniquekey_page_binding.dart';
import '../modules/flutterkeys/uniquekeyPage/views/uniquekey_page_view.dart';
import '../modules/flutterkeys/valuekeyPage/bindings/valuekey_page_binding.dart';
import '../modules/flutterkeys/valuekeyPage/valuekeyexample1/bindings/valuekeyexample1_binding.dart';
import '../modules/flutterkeys/valuekeyPage/valuekeyexample1/views/valuekeyexample1_view.dart';
import '../modules/flutterkeys/valuekeyPage/valuekeyexample2/bindings/valuekeyexample2_binding.dart';
import '../modules/flutterkeys/valuekeyPage/valuekeyexample2/views/valuekeyexample2_view.dart';
import '../modules/flutterkeys/valuekeyPage/views/valuekey_page_view.dart';
import '../modules/flutterkeys/views/flutterkeys_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/notificationpage/bindings/notificationpage_binding.dart';
import '../modules/notificationpage/views/notificationpage_view.dart';
import '../modules/oopspage/bindings/oopspage_binding.dart';
import '../modules/oopspage/views/oopspage_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FLUTTERKEYS,
      page: () => const FlutterkeysView(),
      binding: FlutterkeysBinding(),
      children: [
        GetPage(
          name: _Paths.PAGESTORAGEKEYEXAMPLE,
          page: () => const PagestoragekeyexampleView(),
          binding: PagestoragekeyexampleBinding(),
          children: [
            GetPage(
              name: _Paths.KEYEXAMPLE1,
              page: () => const Keyexample1View(),
              binding: Keyexample1Binding(),
            ),
            GetPage(
              name: _Paths.KEYEXAMPLE2,
              page: () => const Keyexample2View(),
              binding: Keyexample2Binding(),
            ),
          ],
        ),
        GetPage(
          name: _Paths.UNIQUEKEY_PAGE,
          page: () => const UniquekeyPageView(),
          binding: UniquekeyPageBinding(),
        ),
        GetPage(
          name: _Paths.VALUEKEY_PAGE,
          page: () => const ValuekeyPageView(),
          binding: ValuekeyPageBinding(),
          children: [
            GetPage(
              name: _Paths.VALUEKEYEXAMPLE1,
              page: () => const Valuekeyexample1View(),
              binding: Valuekeyexample1Binding(),
            ),
            GetPage(
              name: _Paths.VALUEKEYEXAMPLE2,
              page: () => const Valuekeyexample2View(),
              binding: Valuekeyexample2Binding(),
            ),
          ],
        ),
      ],
    ),
    GetPage(
      name: _Paths.COMPUTEPAGE,
      page: () => const ComputepageView(),
      binding: ComputepageBinding(),
    ),
    GetPage(
      name: _Paths.OOPSPAGE,
      page: () => const OopspageView(),
      binding: OopspageBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATIONPAGE,
      page: () => const NotificationpageView(),
      binding: NotificationpageBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
  ];
}
