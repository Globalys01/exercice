

import 'package:exo/page12Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page12 extends StatelessWidget {
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Unique ID"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
               GetBuilder<MyController>(
                id: "txtCount",
                builder: (controller) {
                  return Text(
                    "The value is ${controller.count}",
                      // "The value is ${myController.count}",
                    style: TextStyle(fontSize: 25),
                  );
                }),
            
              GetBuilder<MyController>(
            
                builder: (controller) {
                  return Text(
                    "The value is ${controller.count}",
                      // "The value is ${myController.count}",
                    style: TextStyle(fontSize: 25),
                  );
                }),
            
            RaisedButton(
                child: Text("Increment"),
                onPressed: () {
                
                   myController.increment();
                }),
         
                InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'page13');
              },
              child: Text("Suivant"),
            ),
         
         
         ],
        ),
      ),
    );
  }
}
