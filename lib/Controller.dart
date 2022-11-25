import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  RxDouble total = 0.0.obs;

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  void sum(String a, String b) {
    double x = 0, y = 0;
    x = double.parse(a);
    y = double.parse(b);
    total.value = x + y;
  }
}
