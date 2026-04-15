import 'package:flutter/material.dart';
import 'package:flutterwidgetsandconcepts/utils/appStyle.dart';

import 'package:get/get.dart';

import '../controllers/keyexample1_controller.dart';

class Keyexample1View extends GetView<Keyexample1Controller> {
  const Keyexample1View({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final screens = [
       Page1(),
        const Center(child: Text("Tab 2")),
      ];
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Key Example1', style: AppStyle.appbartxt),
          centerTitle: true,
        ),
        body: screens[controller.currentIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          backgroundColor: Colors.lightGreenAccent,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_outlined),
              label: "menu 1",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "menu 2"),
          ],
          currentIndex: controller.currentIndex.value,
          onTap: controller.changeIndex,
        ),
      );
    });
  }
  Widget Page1(){return ListView.builder(
    key: PageStorageKey("page1"),   ///store the page
    itemCount: controller.numbers.length,
    itemBuilder: (context, index) {
      return ListTile(
        leading: CircleAvatar(
          child: Text("${controller.numbers[index]}"),
        ),
        title: Text("Item Number ${controller.numbers[index]}"),
        subtitle: const Text("Subtitle detail here"),
        trailing: const Icon(Icons.arrow_forward_ios, size: 14),
      );
    },
  );}
}
