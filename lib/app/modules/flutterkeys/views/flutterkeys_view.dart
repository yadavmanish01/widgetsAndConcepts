import 'package:flutter/material.dart';
import 'package:flutterwidgetsandconcepts/app/routes/app_pages.dart';
import 'package:flutterwidgetsandconcepts/utils/appStyle.dart';
import 'package:flutterwidgetsandconcepts/widgets/customButton.dart';

import 'package:get/get.dart';

import '../../../../extension/sizedboxextension.dart';
import '../controllers/flutterkeys_controller.dart';

class FlutterkeysView extends GetView<FlutterkeysController> {
  const FlutterkeysView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Flutterkeys',style: AppStyle.appbartxt,),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(mainAxisAlignment:MainAxisAlignment.center,children: [
          CustomButton(onPressed:(){Get.toNamed(Routes.PAGESTORAGEKEYEXAMPLE);},title: "PageStorageKey"),
          10.ph,
          CustomButton(onPressed:(){},title: "Value Key"),
        ],),
      )
    );
  }
}
