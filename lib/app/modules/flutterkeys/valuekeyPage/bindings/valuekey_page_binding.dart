import 'package:get/get.dart';

import '../controllers/valuekey_page_controller.dart';

class ValuekeyPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ValuekeyPageController>(
      () => ValuekeyPageController(),
    );
  }
}
