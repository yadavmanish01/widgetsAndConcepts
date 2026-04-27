import 'dart:convert';
import 'dart:isolate';

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
            10.ph,
            ElevatedButton.icon(
              onPressed: () async {
                var receivePort = ReceivePort();

                await Isolate.spawn(
                  fetchDataIsolate,
                  IsolateData(4000, receivePort.sendPort),
                );

                receivePort.listen((message) {
                  if (message is int) {
                    debugPrint("Progress: $message%");
                  } else if (message == "done") {
                    debugPrint("Task Completed");
                    receivePort.close(); // ✅ important
                  }
                });
              },
              label: Text("Isolates"),
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

void fetchDataIsolate(IsolateData data) async {
  final jsonData = jsonEncode(
    List.generate(10000, (i) => {'id': i, 'value': 'value of $i'}),
  );

  for (var i = 0; i < data.iteration; i++) {
    jsonDecode(jsonData);

    var percentage = ((i + 1) / data.iteration) * 100;

    if (percentage % 10 == 0) {
      data.sendPort.send(percentage.toInt());
    }
  }

  // Final result send
  data.sendPort.send("done");
}


//model
class IsolateData {
  final int iteration;
  final SendPort sendPort;

  IsolateData(this.iteration, this.sendPort);
}