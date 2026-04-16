import 'package:flutter/material.dart';
import 'package:flutterwidgetsandconcepts/app/routes/app_pages.dart';
import 'package:flutterwidgetsandconcepts/utils/appStyle.dart';

import 'package:get/get.dart';

import '../../../../../extension/sizedboxextension.dart';
import '../../../../../widgets/customButton.dart';
import '../controllers/valuekey_page_controller.dart';

class ValuekeyPageView extends GetView<ValuekeyPageController> {
  const ValuekeyPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Value key Example',style: AppStyle.appbartxt,),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(mainAxisAlignment:MainAxisAlignment.center,children: [
          CustomButton(onPressed:(){Get.toNamed(Routes.VALUEKEYEXAMPLE1);},title: "Example 1"),
          10.ph,
          CustomButton(onPressed:(){Get.toNamed(Routes.VALUEKEYEXAMPLE2);},title: "Example 2"),
        ],),
      ),
    );
  }
}
