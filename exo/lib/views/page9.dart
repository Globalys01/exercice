import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'page9controller.dart';

class Page9 extends StatelessWidget {
  MyController myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change nom"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "Name is ${myController.student.name}",
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            RaisedButton(
              child: Text("Upper"),
              onPressed: () {
                myController.convertToUpperCase();
              },
            ),
               InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'page10');
              },
              child: Text("Suivant"),
            ),
          ],
        ),
      ),
    );
  }
}
