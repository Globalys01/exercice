import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page5 extends StatelessWidget {
  var count = 0.obs;
  void incremente() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OBx test"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text("Count is $count"),
            ),
            SizedBox(
              height: 16,
            ),
            RaisedButton(onPressed: () {
              incremente();
            })
          ],
        ),
      ),
    );
  }
}
