import 'package:flutter/material.dart';
import 'package:get/get.dart';

class myController extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
  }
}
