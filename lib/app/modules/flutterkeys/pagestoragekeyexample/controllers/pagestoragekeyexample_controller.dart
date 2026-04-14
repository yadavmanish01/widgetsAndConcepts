import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PagestoragekeyexampleController extends GetxController with GetSingleTickerProviderStateMixin {
  //TODO: Implement PagestoragekeyexampleController

  late TabController tabController;

  final tabs = [
    const Tab(text: "Home"),
    const Tab(text: "Profile"),
    const Tab(text: "Settings"),
  ];
  @override
  void onInit() {
    super.onInit();

    tabController = TabController(
      length: tabs.length,
      vsync: this,
    );
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
