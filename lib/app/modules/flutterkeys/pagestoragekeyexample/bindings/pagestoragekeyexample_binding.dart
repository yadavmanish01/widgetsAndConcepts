import 'package:get/get.dart';

import '../controllers/pagestoragekeyexample_controller.dart';

class PagestoragekeyexampleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PagestoragekeyexampleController>(
      () => PagestoragekeyexampleController(),
    );
  }
}
