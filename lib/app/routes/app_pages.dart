import 'package:get/get.dart';

import '../modules/flutterkeys/bindings/flutterkeys_binding.dart';
import '../modules/flutterkeys/pagestoragekeyexample/bindings/pagestoragekeyexample_binding.dart';
import '../modules/flutterkeys/pagestoragekeyexample/keyexample1/bindings/keyexample1_binding.dart';
import '../modules/flutterkeys/pagestoragekeyexample/keyexample1/views/keyexample1_view.dart';
import '../modules/flutterkeys/pagestoragekeyexample/keyexample2/bindings/keyexample2_binding.dart';
import '../modules/flutterkeys/pagestoragekeyexample/keyexample2/views/keyexample2_view.dart';
import '../modules/flutterkeys/pagestoragekeyexample/views/pagestoragekeyexample_view.dart';
import '../modules/flutterkeys/views/flutterkeys_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

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
      ],
    ),
  ];
}
