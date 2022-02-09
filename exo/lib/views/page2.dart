import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialogue"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
                child: Text("New Dialogue"),
                onPressed: () {
                  Get.defaultDialog(
                    title: "Dialogue Title",
                    titleStyle: TextStyle(fontSize: 26),
                    middleText: "mon texte a moi",
                    middleTextStyle: TextStyle(fontSize: 20),
                    backgroundColor: Colors.white,
                    radius: 20,
                    content: Row(
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(child: Text(" Data logine")),
                      ],
                    ),
                    
                  );
                }),

                   InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'page3');
              },
              child: Text("Suivant"),
            ),
          ],
        ),
      ),
    );
  }
}
