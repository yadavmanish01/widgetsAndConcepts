import 'package:get/get.dart';

import '../controllers/valuekeyexample1_controller.dart';

class Valuekeyexample1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Valuekeyexample1Controller>(
      () => Valuekeyexample1Controller(),
    );
  }
}
