import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> map() async {
  await GetStorage.init();
}

class Page17 extends StatelessWidget {
  var emailEditingController = TextEditingController();
  var storage = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getstorage et email"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: emailEditingController,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: RaisedButton(
                child: Text('write'),
                onPressed: () {
                  if (GetUtils.isEmail(emailEditingController.text)) {
                    storage.write("email", emailEditingController.text);
                  } else {
                    Get.snackbar(
                      "Incorrect Email",
                      "Provide Email in valid format",
                      colorText: Colors.white,
                      backgroundColor: Colors.blueGrey,
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  }
                },
              ),
            ),
            SizedBox(
              height: 8,
            ),
            RaisedButton(
                child: Text("Read"),
                onPressed: () {
                  print("The Email is ${storage.read("email")}");
                }),

                       InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'page18');
              },
              child: Text("Suivant"),
            ),
         
          ],
        ),
      ),
    );
  }
}
