import 'package:flutter/material.dart';
import 'package:flutter_json_arrays/models/model.dart';

class ArticleList extends StatelessWidget {
  final List<Article> articles;

  ArticleList(this.articles);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, int index) {
        return buildArticle(articles[index]);
      },
    );
  }

  Widget buildArticle(Article article) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(article.title)
        ],
      ),
    );
  }
}