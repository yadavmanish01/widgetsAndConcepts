import 'package:get/get.dart';

class Valuekeyexample2Controller extends GetxController {
  //TODO: Implement Valuekeyexample2Controller


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
  RxList<String> items = ["A", "B", "C"].obs;

  void removeItem(int index) {
    items.removeAt(index);
  }
}
