
import 'package:exo/Page15.dart';
import 'package:exo/message.dart';
import 'package:exo/page12.dart';
import 'package:exo/page14.dart';
import 'package:exo/page16.dart';
import 'package:exo/page17.dart';
import 'package:exo/page18.dart';
import 'package:exo/page7.dart';
import 'package:exo/views/Page10.dart';
import 'package:exo/views/Page8.dart';
import 'package:exo/views/homeView.dart';
import 'package:exo/views/page1.dart';
import 'package:exo/views/page11.dart';
import 'package:exo/views/page13.dart';
import 'package:exo/views/page2.dart';
import 'package:exo/views/page3.dart';
import 'package:exo/views/page4.dart';
import 'package:exo/views/page5.dart';
import 'package:exo/views/pageGarde.dart';
import 'package:exo/views/spashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/facture.dart';
import 'controller/grandLivreGtci.dart';
import 'views/page9.dart';


void main() async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Presse Cote d'ivoire",
      translations: Message(),
      locale: Locale('en','US'),
      fallbackLocale:Locale('en','US') ,
      theme: ThemeData(
      
      ),
      home: Page1(),
      routes: {
        'page2': (context) =>Page2(),
        'page3': (context) =>Page3(),
        'page4': (context) =>Page4(),
        'page5': (context) =>Page5(),
        'page7': (context) =>Page7(),
        // 'page8': (context) =>Page8(),
        // 'page9': (context) =>Page9(),
        'page10': (context) =>Page10(),
        'page11': (context) =>Page11(),
        'page12': (context) =>Page12(),
        'page13': (context) => Page13(),
        'page14': (context) =>page14(),
        'page15': (context) =>Page15(),
        'page16': (context) =>Page16(),
        'page17': (context) =>Page17(),
        'page18': (context) =>Page18(),
        
      },
    );
  }
}

