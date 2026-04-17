import 'package:get/get.dart';

import '../controllers/computepage_controller.dart';

class ComputepageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ComputepageController>(
      () => ComputepageController(),
    );
  }
}
