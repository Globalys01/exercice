import 'package:exo/etudiant.dart';
import 'package:exo/message.dart';
import 'package:exo/page14Controller.dart';
import 'package:exo/pageController.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class page14 extends StatelessWidget {
  MyController mycontroller = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Presentation etudiant',
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'hello'.tr,
              style: TextStyle(fontSize: 25, color: Colors.purple),
            ),
            RaisedButton(
                child: Text("Hindi"),
                onPressed: () {
                  mycontroller.changeLanguage('hi', 'IN');
                }),
            SizedBox(
              height: 20,
            ),
            RaisedButton(child: Text("French"), onPressed: () {
              mycontroller.changeLanguage('fr', 'FR');
            }),
            SizedBox(
              height: 20,
            ),
            RaisedButton(child: Text("Anglais"), onPressed: () {
              mycontroller.changeLanguage('an', 'US');
            }),
                   InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'page15');
              },
              child: Text("Suivant"),
            ),
         
          ],
        ),
      ),
    );
  }
}
