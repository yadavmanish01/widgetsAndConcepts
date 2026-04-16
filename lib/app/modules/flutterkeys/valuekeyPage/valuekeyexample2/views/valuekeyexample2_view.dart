import 'package:flutter/material.dart';
import 'package:flutterwidgetsandconcepts/utils/appStyle.dart';
import 'package:flutterwidgetsandconcepts/utils/custom_form_field.dart';

import 'package:get/get.dart';

import '../controllers/valuekeyexample2_controller.dart';

class Valuekeyexample2View extends GetView<Valuekeyexample2Controller> {
  const Valuekeyexample2View({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Valuekey Example2',style: AppStyle.appbartxt,),
        centerTitle: true,
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: controller.items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: CustomFormField(labelText: controller.items[index],),

              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  controller.removeItem(index);
                },
              ),
            );
          },
        );
      }),
    );
  }
}
