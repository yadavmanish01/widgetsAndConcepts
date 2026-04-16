import 'package:flutter/material.dart';
import 'package:flutterwidgetsandconcepts/utils/appStyle.dart';
import 'package:flutterwidgetsandconcepts/utils/custom_form_field.dart';
import 'package:flutterwidgetsandconcepts/widgets/customButton.dart';

import 'package:get/get.dart';

import '../../../../../../extension/sizedboxextension.dart';
import '../controllers/valuekeyexample1_controller.dart';

class Valuekeyexample1View extends GetView<Valuekeyexample1Controller> {
  const Valuekeyexample1View({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Valuekey Example1',style: AppStyle.appbartxt,),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Obx(() {
          return Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              controller.isSwapped.value
                  ? CustomFormField(key:ValueKey("uername"),labelText: "Username",)
                  : CustomFormField(key:ValueKey("email"),labelText: "Email",),

              10.ph,
              controller.isSwapped.value
                  ? CustomFormField(key:ValueKey("email1"),labelText: "Email",)
                  : CustomFormField(key:ValueKey("username1"),labelText: "Username",),
60.ph,
              ElevatedButton(
                onPressed: () {
                  controller.isSwapped.toggle();
                },
                child: Text("Swap"),
              )
            ],
          );
        })
      )
    );
  }
}
