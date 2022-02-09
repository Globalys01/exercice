
import 'package:exo/views/page13Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page13 extends StatelessWidget {
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
           
           
            RaisedButton(
                child: Text("Increment"),
                onPressed: () {
                  // Get.find<MyController>().increment();
                   myController.increment();
                }),
                Padding(padding: EdgeInsets.all(16),
                child: TextField(onChanged: (value) {
                  myController.increment();
                },),
                ),
                       InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'page14');
              },
              child: Text("Suivant"),
            ),
         
         ],
        ),
      ),
    );
  }
}
