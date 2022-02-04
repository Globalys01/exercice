import 'package:exo/controller/homeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  HomeController homeController =  Get.put<HomeController>(HomeController(),
    );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mot de passe caché "),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Obx(()=>
            TextField(
              obscureText: controller.isPasswordHidden.value,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Password",
                suffix: InkWell(
                  child: Icon(controller.isPasswordHidden.value?
                    Icons.visibility:  Icons.visibility_off,
                    color: Colors.grey,
                    size: 20,
                  ),
                  onTap: () {
                    controller.isPasswordHidden.value =
                    !controller.isPasswordHidden.value;
                  },
                ),
              ),
            ),
            
            
            ),
          ],
        ),
      ),
    );
  }
}
