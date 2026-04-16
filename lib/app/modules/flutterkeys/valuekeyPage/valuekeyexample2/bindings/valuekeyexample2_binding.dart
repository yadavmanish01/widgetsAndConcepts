import 'package:get/get.dart';

import '../controllers/valuekeyexample2_controller.dart';

class Valuekeyexample2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Valuekeyexample2Controller>(
      () => Valuekeyexample2Controller(),
    );
  }
}
