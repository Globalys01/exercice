import 'dart:io';

import 'package:exo/views/homeApController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class HomAp extends StatelessWidget {
//  HomeApController myController = Get.put(HomeApController());
  final HomeApController myController =
      Get.put(HomeApController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
   
              SizedBox(
                height: 10,
              ),
              Obx(
                () => myController.selectedImagePath.value == ''
                    ? Text('Select image from camera/gallley',
                        style: TextStyle(fontSize: 20))
                    : Image.file(
                        File(myController.selectedImagePath.value),
                      ),
              ),
              SizedBox(
                height: 10,
              ),
              Obx(
                () => Text(
                    myController.selectedImageSize.value == ''
                        ? ''
                        : myController.selectedImageSize.value,
                    style: TextStyle(
                      fontSize: 20,
                    )),
              ),
              RaisedButton(
                  child: Text("Camera"),
                  onPressed: () {
                    myController.GetImage(ImageSource.camera);
                  }),
              RaisedButton(
                  child: Text("Gallery"),
                  onPressed: () {
                    myController.GetImage(ImageSource.gallery);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
