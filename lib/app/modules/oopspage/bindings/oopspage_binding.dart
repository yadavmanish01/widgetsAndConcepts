import 'package:get/get.dart';

import '../controllers/oopspage_controller.dart';

class OopspageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OopspageController>(
      () => OopspageController(),
    );
  }
}
