// To parse this JSON data, do
//
//     final article = articleFromMap(jsonString);

import 'dart:convert';

List<Article> articleFromMap(String str) =>
    List<Article>.from(json.decode(str).map((x) => Article.fromMap(x)));

String articleToMap(List<Article> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class Article {
  Article({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  int userId;
  int id;
  String title;
  String body;

  factory Article.fromMap(Map<String, dynamic> json) => Article(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toMap() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
