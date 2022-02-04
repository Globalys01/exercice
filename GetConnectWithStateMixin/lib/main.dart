import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';



void main() async{
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
            title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
 
    );
  }
}



// void main() {
//   runApp (
//     GetMaterialApp(

//     ),
//   );
// }
