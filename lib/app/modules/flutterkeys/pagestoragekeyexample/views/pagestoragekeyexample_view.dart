import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pagestoragekeyexample_controller.dart';

class PagestoragekeyexampleView
    extends GetView<PagestoragekeyexampleController> {
  const PagestoragekeyexampleView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PagestoragekeyexampleView'),
        centerTitle: true,
        bottom: TabBar(
          controller: controller.tabController,
          tabs: controller.tabs,
        ),
      ),
      body: TabBarView(
        controller: controller.tabController,
        children: const [
          Center(child: Text("Home Screen")),
          Center(child: Text("Profile Screen")),
          Center(child: Text("Settings Screen")),
        ],
      ),
    );

  }
}
