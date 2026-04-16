import 'package:get/get.dart';

import '../controllers/uniquekey_page_controller.dart';

class UniquekeyPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UniquekeyPageController>(
      () => UniquekeyPageController(),
    );
  }
}
