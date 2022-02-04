import 'package:exo/views/page3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("Navigator"),
              onPressed: () {
                Get.to(
                  Page3(),
                  fullscreenDialog: true,
                  transition: Transition.zoom,
                  duration: Duration(milliseconds: 4000),
                  curve: Curves.bounceInOut
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
