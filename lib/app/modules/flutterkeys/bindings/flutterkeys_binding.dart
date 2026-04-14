import 'package:get/get.dart';

import '../controllers/flutterkeys_controller.dart';

class FlutterkeysBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FlutterkeysController>(
      () => FlutterkeysController(),
    );
  }
}
