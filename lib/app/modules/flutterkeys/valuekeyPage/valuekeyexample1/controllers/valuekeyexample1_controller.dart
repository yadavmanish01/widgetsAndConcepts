import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Valuekeyexample1Controller extends GetxController {
  //TODO: Implement Valuekeyexample1Controller

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
  RxBool isSwapped = false.obs;

  void toggleSwap() {
    isSwapped.value = !isSwapped.value;
  }
}
