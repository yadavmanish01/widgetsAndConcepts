import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../extension/sizedboxextension.dart';
import '../controllers/computepage_controller.dart';

class ComputepageView extends GetView<ComputepageController> {
  const ComputepageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Isolate Example'), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            Image.asset("assets/gif/abcd.gif"),
            ElevatedButton.icon(
              onPressed: () async {
                var json = await FetchData(40000);
                debugPrint('-----Json parsed: length ${json.length}');
              },
              label: Text("async await"),
              icon: Icon(Icons.star),
            ),
            10.ph,
            ElevatedButton.icon(
              onPressed: () async {
                var json = await compute(FetchData, 40000);
                debugPrint('-----Json parsed: length ${json.length}');
              },
              label: Text("compute"),
              icon: Icon(Icons.star),
            ),
          ],
        ),
      ),
    );
  }

  Future<String>FetchData(int iteration)async{
    await Future.delayed(Duration(seconds: 3));
    
    final Jsondata= jsonEncode(List.generate(10000,(i)=>{'id':i,'value':'value of $i'}));
    for(var i =0;i<iteration;i++){
      jsonDecode(Jsondata);
    }
    jsonDecode(Jsondata);
    return Jsondata;
  }
}



// ------outside the class

