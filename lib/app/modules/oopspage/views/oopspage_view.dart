import 'package:flutter/material.dart';
import 'package:flutterwidgetsandconcepts/utils/appStyle.dart';

import 'package:get/get.dart';

import '../../../../extension/sizedboxextension.dart';
import '../controllers/oopspage_controller.dart';

class OopspageView extends GetView<OopspageController> {
  const OopspageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OOPS', style: AppStyle.appbartxt),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children:  [
          OopsCard(
            title: "1. Class & Object",
            description:
                "A class is a blueprint and an object is its instance.\n\nExample:\nclass Car {}\nCar c = Car();",
          ),
          OopsCard(
            title: "2. Encapsulation",
            description:
                "Hiding data and controlling access to it.\n\nUse '_' for private variables.\n\nExample:\nint _age;\n"
            ,
            hint: "works like capsule. if there is pain in hand then it will only work on hand\n. make every data private that nobody from outside the file can access that properties.\n To access that property use \"getter, setter method\"",
          ),
          OopsCard(
            title: "3. Inheritance",
            description:
                "One class can inherit properties from another class.\n\nExample:\nclass A {}\nclass B extends A {}",
            hint: "can inherit any parents properties with \"extends\". We can used \"super\" keyword to inherit the constructor."
          ),
          OopsCard(
            title: "4. Polymorphism",
            description:
                "Same function with different behavior.\n\nExample:\nMethod overriding.",
            hint: "Method overloading is not supported in dart by default. bt we can achieve it",
          ),
          OopsCard(
            title: "5. Abstraction",
            description:
                "Show only important details and hide implementation.\n\nUse abstract class.",
            hint: "We cannot directly instantiate it.\n \"Abstract method has not any body\"",
          ),
          OopsCard(
            title: "6. Constructor",
            description:
                "Called when an object is created.\n\nExample:\nCar() {}",
          ),
          OopsCard(
            title: "7. Getter & Setter",
            description:
                "Used to safely access and update data.\n\nExample:\nget name => _name;",
          ),
          20.ph,
          Text("4 Pillars of OOPS", style: AppStyle.headingMedium),
          Text(
            "1 inheritance\n 2 encapsulation\n 3 Polymorphism\n 4 Abstraction\n",
            style: AppStyle.headingSmall,
          ),
          20.ph,
        ],
      ),
    );
  }
}

class OopsCard extends StatelessWidget {
  final String title;
  final String description;
  String? hint;

   OopsCard({super.key, required this.title, required this.description,this.hint});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: AppStyle.headingSmall),
            8.ph,
            Text(description, style: AppStyle.bodyLarge),
            8.ph,
            Text(hint??"",style: AppStyle.label,)
          ],
        ),
      ),
    );
  }
}
