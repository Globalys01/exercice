import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class HomeController extends GetxController {
  var isPasswordHidden = true.obs;
  TextEditingController qrcontentEditingControlle = TextEditingController();
  var qrCode = "".obs;
  String scannQrCode = "";
  @override
  void dependencies() {
    Get.put<HomeController>(
      HomeController(),
    );
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  Future<void> scanQr() async {
    try {
      scannQrCode = await FlutterBarcodeScanner.scanBarcode(
          "#ff6666", "Cancel", true, ScanMode.QR);
      if (scannQrCode != "-1") {
        Get.snackbar("Result", "Qrcode" + scannQrCode,
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.blueGrey,
            colorText: Colors.white);
      }
    } on PlatformException {}
  }
}
