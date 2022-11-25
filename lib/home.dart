import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Controller.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Controller c = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(controller: c.t1, keyboardType: TextInputType.number),
          TextField(controller: c.t2, keyboardType: TextInputType.number),
          Obx(() => Text("${c.total}")),
          ElevatedButton(
              onPressed: () {
                try {
                  String a = c.t1.text;
                  String b = c.t2.text;
                  c.sum(a, b);
                  c.t1.clear();
                  c.t2.clear();
                } on Exception catch (e) {
                  print("$e String is not valid");
                  c.t1.clear();
                  c.t2.clear();
                }
              },
              child: Text("total"))
        ],
      ),
    );
  }
}
