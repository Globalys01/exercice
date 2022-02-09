import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'page18Controller.dart';

class Page18 extends GetView<Page18Controller> {
  final Page18Controller _page18Controller = Get.put(Page18Controller(),permanent: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
        centerTitle: true,
      ),
      body: controller.obx((data) => ListView.builder(
        padding: EdgeInsets.all(8),
            itemCount: data?.length,
            itemBuilder: (BuildContext context,int index) {
            return Card(
              child: Column(
                
                children: [
                         InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'page19');
              },
              child: Text("Suivant"),
            ),
         
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(data![index]['picture']['large']),
                    ),
                    title: Text(data[index]['name']['title'] + "" + data[index]['name']['first'],),
                    subtitle: Text(data[index]['email'],style: TextStyle(fontSize: 12),),
                  trailing:  Text("Age:"+data[index]['dob']['age'].toString()),
                  ),
                ],
              ),
            ) ;
            },
          ),
          onError: (error)=> Center(
            child: Text(error!),
          ),
          ),
          
    );
  }
}
