import 'package:get/get.dart';

import '../controllers/keyexample2_controller.dart';

class Keyexample2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Keyexample2Controller>(
      () => Keyexample2Controller(),
    );
  }
}
