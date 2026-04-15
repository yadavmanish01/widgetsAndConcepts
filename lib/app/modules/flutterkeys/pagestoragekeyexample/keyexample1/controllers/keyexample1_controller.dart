import 'package:get/get.dart';

class Keyexample1Controller extends GetxController {
  //TODO: Implement Keyexample1Controller

 RxInt currentIndex = 0.obs;
 final List<int> numbers = List.generate(50, (index) => index + 1);
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
 void changeIndex(int index) => currentIndex.value = index;
}
