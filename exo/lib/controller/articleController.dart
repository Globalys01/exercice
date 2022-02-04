import 'dart:convert';

import 'package:exo/model/modelArticle.dart';
import 'package:exo/views/addArticle.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ArticleController extends GetxController {
  String lienApi = "https://jsonplaceholder.typicode.com";
  RxList<Article> articleList = <Article>[].obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    _listArticle();
    super.onInit();
  }

  Future<List<Article>> _listArticle() async {
    isLoading.value = true;
    var monLien = Uri.parse("$lienApi/posts");
    http.Response response = await http.get(monLien, headers: {
      'Accept': 'application/json',
    });
    var data = json.decode(response.body);

    //print(data);
    print(response.statusCode);

    articleList((data as List).map((data) => Article.fromMap(data)).toList());
    isLoading(false);
    return articleList;
  }

  addArticle(String title, String body) async {
    print("ok");
    isLoading.value = true;
    var monLien = Uri.parse("$lienApi/posts");
    http.Response response = await http.post(monLien, headers: {
      'Accept': 'application/json',
    }, body: {
      "title": title,
      "body": body,
    });
    var data = json.decode(response.body);
    print(response.body);
    print(response.statusCode);
  }
}
