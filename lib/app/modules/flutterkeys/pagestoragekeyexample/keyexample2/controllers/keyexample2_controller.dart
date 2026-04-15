import 'package:get/get.dart';

class Keyexample2Controller extends GetxController {
  //TODO: Implement Keyexample2Controller

  final currentIndex = 0.obs;
  void changeIndex(int index) => currentIndex.value = index;

  final List<int> list = List.generate(20, (index) => index + 1).obs;
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

}
