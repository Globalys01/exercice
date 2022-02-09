import 'package:exo/views/page10Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page10 extends StatelessWidget {
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Incrementation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
               GetX<MyController>(
                init: (MyController()),
                builder: (myController) {
                  return Text(
                    "The value is ${myController.count}",
                      // "The value is ${myController.count}",
                    style: TextStyle(fontSize: 25),
                  );
                }),
            SizedBox(
              height: 16,
            ),
            RaisedButton(
                child: Text("Increment"),
                onPressed: () {
                  // Get.find<MyController>().increment();
                   myController.increment();
                }),
                       InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'page11');
              },
              child: Text("Suivant"),
            ),
         
         ],
         
        ),
      ),
    );
  }
}
