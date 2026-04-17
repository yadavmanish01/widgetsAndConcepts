import 'package:flutter/material.dart';
import 'package:flutterwidgetsandconcepts/app/routes/app_pages.dart';
import 'package:flutterwidgetsandconcepts/utils/appStyle.dart';
import 'package:flutterwidgetsandconcepts/widgets/customButton.dart';

import 'package:get/get.dart';

import '../../../../extension/sizedboxextension.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home',style: AppStyle.appbartxt,), centerTitle: true),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        children: [
          CustomButton(onPressed:(){Get.toNamed(Routes.FLUTTERKEYS);},title: "Keys"),
          10.ph,
          CustomButton(onPressed:(){Get.toNamed(Routes.COMPUTEPAGE);},title: "Isolate"),
        ],
      ),
    );
  }
}
