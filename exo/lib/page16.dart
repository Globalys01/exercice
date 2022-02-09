import 'package:flutter/material.dart';

class Page16 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Texts'),
        
      ),
      body:        InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'page17');
              },
              child: Text("Suivant"),
            ),
         
    );
  }
}

Future<void> initServices() async {
  print('starting service ...');
}
