import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class HomeApController extends GetxController {
  var selectedImagePath = ''.obs;
  var selectedImageSize = ''.obs;

  void GetImage(ImageSource imageSource) async {
    final pisckedFile = await ImagePicker().getImage(source: imageSource);
    if (pisckedFile != null) {
      selectedImageSize.value = pisckedFile.path;
      selectedImageSize.value =
          ((File(selectedImagePath.value)).lengthSync() / 1024 / 1024)
                  .toStringAsFixed(2) +
              "Mb";
      final cropImageFile = await ImageCropper.cropImage(
          sourcePath: selectedImagePath.value, maxHeight: 512, maxWidth: 512,compressFormat: ImageCompressFormat.jpg);
    

    } else {
      Get.snackbar("Error", "No image selected",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.amber,
          colorText: Colors.white);
    }
  }
}
