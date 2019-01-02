// Model generator: https://app.quicktype.io/
// And choose "Dart"
// To parse this JSON data, do
//
//     final article = articleFromJson(jsonString);

import 'dart:convert';

List<Article> articleFromJson(String str) {
  final jsonData = json.decode(str);
  return new List<Article>.from(jsonData.map((x) => Article.fromJson(x)));
}

String articleToJson(List<Article> data) {
  final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
  return json.encode(dyn);
}

class Article {
  int id;
  String title;
  String content;
  String imageLink;
  String bgImage;
  String subCategory;
  String parentCategory;
  String author;
  String dateCreated;

  Article({
    this.id,
    this.title,
    this.content,
    this.imageLink,
    this.bgImage,
    this.subCategory,
    this.parentCategory,
    this.author,
    this.dateCreated,
  });

  factory Article.fromJson(Map<String, dynamic> json) => new Article(
        id: json["id"],
        title: json["title"],
        content: json["content"],
        imageLink: json["imageLink"],
        bgImage: json["bgImage"],
        subCategory: json["subCategory"],
        parentCategory: json["parentCategory"],
        author: json["author"],
        dateCreated: json["dateCreated"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "content": content,
        "imageLink": imageLink,
        "bgImage": bgImage,
        "subCategory": subCategory,
        "parentCategory": parentCategory,
        "author": author,
        "dateCreated": dateCreated,
      };
}
