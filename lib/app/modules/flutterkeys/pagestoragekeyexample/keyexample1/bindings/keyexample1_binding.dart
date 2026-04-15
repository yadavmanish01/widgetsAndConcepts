import 'package:get/get.dart';

import '../controllers/keyexample1_controller.dart';

class Keyexample1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Keyexample1Controller>(
      () => Keyexample1Controller(),
    );
  }
}
