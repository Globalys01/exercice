
import 'package:exo/page7.dart';
import 'package:exo/views/homeView.dart';
import 'package:exo/views/page1.dart';
import 'package:exo/views/page2.dart';
import 'package:exo/views/page3.dart';
import 'package:exo/views/page4.dart';
import 'package:exo/views/page5.dart';
import 'package:exo/views/pageGarde.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/facture.dart';
import 'controller/grandLivreGtci.dart';


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
      theme: ThemeData(
      
      ),
      home: GrandLivreGtci(),
    );
  }
}

