import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bouttom sheet"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RaisedButton(
                child: Text("Bottom sheep"),
                onPressed: () {
                  Get.bottomSheet(
                    Container(
                      child: Wrap(
                        children: [
                          ListTile(
                            title: Text("light theme"),
                            leading: Icon(Icons.wb_shade_outlined),
                            onTap: () => {
                              Get.changeTheme(ThemeData.light()),
                            },
                          ),
                          ListTile(
                            title: Text("Dark theme"),
                            leading: Icon(Icons.wb_sunny),
                            onTap: () => {
                              Get.changeTheme(ThemeData.dark()),
                            },
                          ),
                        ],
                      ),
                    ),
                    //  barrierColor: Colors.red.shade50,
                    backgroundColor: Colors.orange.withOpacity(0.2),
                    isDismissible: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: Colors.white,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                    ),
                  );
                }),
                   InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'page4');
              },
              child: Text("Suivant"),
            ),
          ],
        ),
      ),
    );
  }
}
