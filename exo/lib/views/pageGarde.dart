import 'package:exo/controller/articleController.dart';
import 'package:exo/model/modelArticle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'addArticle.dart';

class PageGarde extends StatefulWidget {
  @override
  State<PageGarde> createState() => _PageGardeState();
}

class _PageGardeState extends State<PageGarde> {
  ArticleController _articleController = Get.put(ArticleController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("ListE des articles"),
      ),
      body: Obx(
        () => _articleController.isLoading.value
            ? Center(child: CircularProgressIndicator())
            : Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: _articleController.articleList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        width: Get.width / 1.2,
                        height: Get.height / 8,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Icon(
                                Icons.file_copy,
                              ),
                              title: Text(
                                _articleController.articleList[index].title,
                                maxLines: 2,
                                style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  _articleController.articleList[index].body,
                                  maxLines: 2,
                                  style: TextStyle(
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
      ),
      floatingActionButton: FloatingActionButton(
        focusColor: Colors.black,
        backgroundColor: Colors.green,
        onPressed: () {
          Get.to(AddArticle());
        },
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
