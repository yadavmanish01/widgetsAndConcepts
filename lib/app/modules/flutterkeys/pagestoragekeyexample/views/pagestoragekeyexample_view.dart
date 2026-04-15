import 'package:flutter/material.dart';
import 'package:flutterwidgetsandconcepts/app/routes/app_pages.dart';
import 'package:flutterwidgetsandconcepts/utils/appStyle.dart';

import 'package:get/get.dart';

import '../../../../../extension/sizedboxextension.dart';
import '../../../../../widgets/customButton.dart';
import '../controllers/pagestoragekeyexample_controller.dart';

class PagestoragekeyexampleView
    extends GetView<PagestoragekeyexampleController> {
  const PagestoragekeyexampleView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagestoragekey Example',style: AppStyle.appbartxt,),
        centerTitle: true,
       automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(mainAxisAlignment:MainAxisAlignment.center,children: [
          CustomButton(onPressed:(){Get.toNamed(Routes.KEYEXAMPLE1);},title: "Example 1"),
          10.ph,
          CustomButton(onPressed:(){Get.toNamed(Routes.KEYEXAMPLE2);},title: "Example 2"),
        ],),
      )
    );

  }
}
