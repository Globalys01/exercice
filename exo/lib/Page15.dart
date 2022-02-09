import 'package:exo/page15Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page15 extends StatelessWidget {
  MyController myController =
      Get.put(MyController(), tag: 'instance', permanent: true);
// Get.put(()=>MyController())
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(onPressed: () {
              Get.find<MyController>();
              Get.find<MyController>().incrementCounter();
            }),
          ],
        ),
      ),
    );
  }
}
