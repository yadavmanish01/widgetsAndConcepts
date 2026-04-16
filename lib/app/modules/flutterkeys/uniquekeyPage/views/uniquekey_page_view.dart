import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../extension/sizedboxextension.dart';
import '../../../../../utils/custom_form_field.dart';
import '../controllers/uniquekey_page_controller.dart';

class UniquekeyPageView extends GetView<UniquekeyPageController> {
  const UniquekeyPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UniquekeyPageView'), centerTitle: true),
      body:  Obx(() {
        return ListView.builder(
          itemCount: controller.items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: CustomFormField(key:UniqueKey(),labelText: controller.items[index],),

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


class CounterBox extends StatefulWidget {
  final String label;
  final Color color;

  const CounterBox({
    super.key,
    required this.label,
    required this.color,
  });

  @override
  State<CounterBox> createState() => _CounterBoxState();
}

class _CounterBoxState extends State<CounterBox> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          count++;
        });
      },
      child: Container(
        width: 120,
        height: 120,
        color: widget.color,
        child: Center(
          child: Text(
            "${widget.label}\n$count",
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}