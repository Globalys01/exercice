
import 'package:exo/views/Page11Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page11 extends StatelessWidget {
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
               GetBuilder<MyController>(
                initState: (data)=>myController.increment(),
                dispose: (_)=>myController.cleanUpTask(),
                builder: (controller) {
                  return Text(
                    "The value is ${controller.count}",
                      // "The value is ${myController.count}",
                    style: TextStyle(fontSize: 25),
                  );
                }),
            // SizedBox(
            //   height: 16,
            // ),
            // RaisedButton(
            //     child: Text("Increment"),
            //     onPressed: () {
            //       // Get.find<MyController>().increment();
            //        myController.increment();
            //     }),
                   InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'page12');
              },
              child: Text("Suivant"),
            ),
         
         ],
        ),
      ),
    );
  }
}
