import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import 'authController.dart';

class HomeAuth extends StatelessWidget {
  final AuthController authController =
      Get.put(AuthController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Local Authentication'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: [
                Obx(() => authController.hasFaceLock.value
                    ? Icon(
                        Icons.check,
                        color: Colors.green,
                      )
                    : Icon(
                        Icons.clear,
                        color: Colors.red,
                      )),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Finger print Authentication',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height:10),

            Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: [
                Obx(() => authController.hasFaceLock.value
                    ? Icon(
                        Icons.check,
                        color: Colors.green,
                      )
                    : Icon(
                        Icons.clear,
                        color: Colors.red,
                      )),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Face Authentication',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
           SizedBox(
                  height: 16,
                ),

                Column(
                  children: [
                    ElevatedButton(onPressed: () =>authController.authenticateUser , child: Text("Authenticate"))
                  ],
                ),
        ],
      ),
    );
  }
}
