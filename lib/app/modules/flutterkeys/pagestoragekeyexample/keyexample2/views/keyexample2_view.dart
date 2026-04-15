import 'package:flutter/material.dart';
import 'package:flutterwidgetsandconcepts/utils/appStyle.dart';

import 'package:get/get.dart';

import '../controllers/keyexample2_controller.dart';

class Keyexample2View extends GetView<Keyexample2Controller> {
  const Keyexample2View({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final screens = [Page1(), Center(child: Text("tab2",style: AppStyle.headingSmall,))];
      return Scaffold(
        appBar: AppBar(title: const Text('Key Example2'), centerTitle: true),
        body: screens[controller.currentIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          onTap: controller.changeIndex,
          currentIndex: controller.currentIndex.value,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_outlined),
              label: "tab 1",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "tab 2"),
          ],
        ),
      );
    });
  }

  Widget Page1() {
    return GridView.builder(
      key: PageStorageKey("gridexample"),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return GridTile(
          child: Center(
            child: Text(
              "Grid ItemL:${index + 1}",
              style: AppStyle.headingSmall,
            ),
          ),
        );
      },
    );
  }
}
