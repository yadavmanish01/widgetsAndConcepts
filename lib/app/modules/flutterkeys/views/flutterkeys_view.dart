import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/flutterkeys_controller.dart';

class FlutterkeysView extends GetView<FlutterkeysController> {
  const FlutterkeysView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlutterkeysView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FlutterkeysView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
