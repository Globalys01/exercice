import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("exercice"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
                child: Text("SnackBar"),
                onPressed: () {
                  Get.snackbar("snackBar title", "message",snackPosition: SnackPosition.BOTTOM,titleText: Text("Mon premier snack",style: TextStyle(color: Colors.white),));
                }),
          ],
        ),
      ),
    );
  }
}
