import 'package:exo/controller/homeController.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:get/get.dart';

class Page7 extends GetView<HomeController> {
  HomeController homeController = Get.put<HomeController>(
    HomeController(),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Qrcode"),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Obx(
              () => QrImage(
                data: controller.qrCode.value,
                size: 200,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: controller.isPasswordHidden.value,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: "QrCode",
              ),
              keyboardType: TextInputType.text,
              controller: controller.qrcontentEditingControlle,
              onChanged: (val) {
                controller.qrCode.value = val;
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                controller.scanQr();
                print("Bonjour");
              },
              child: Text("Scan QrCode"),
            ),
          ],
        ),
      ),
    );
  }
}
