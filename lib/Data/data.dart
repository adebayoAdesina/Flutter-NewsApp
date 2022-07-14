import 'dart:convert';

import 'package:http/http.dart' as http;
import '../Model/article_model.dart';

class News {
  List<ArticleModel> news = [];

  Future<void> getTopNews() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=ng&apiKey=182d8f9eef274ff88faea62d0c2178a7";
    var response = await http.get(Uri.parse(url));

    Map<dynamic, dynamic> jsonData = jsonDecode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((value) {
        if (value['urlToImage'] != null && value['description'] != null) {
          ArticleModel articleModel = ArticleModel(
              title: value['title'],
              author: value['author'],
              description: value['description'],
              imageUrl: value['urlToImage'],
              url: value['url'],
              publishedDate: value['publishedAt'],
              content: value['context']);
          news.add(articleModel);
        } else {}
      });
    } else {}
  }
}


class CategoryNews {
  List<ArticleModel> news = [];

  Future<void> getCategoryNews(String category) async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=ng&category=$category&apiKey=182d8f9eef274ff88faea62d0c2178a7";
    var response = await http.get(Uri.parse(url));

    Map<dynamic, dynamic> jsonData = jsonDecode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((value) {
        if (value['urlToImage'] != null && value['description'] != null) {
          ArticleModel articleModel = ArticleModel(
              title: value['title'],
              author: value['author'],
              description: value['description'],
              imageUrl: value['urlToImage'],
              url: value['url'],
              publishedDate: value['publishedAt'],
              content: value['context']);
          news.add(articleModel);
        } else {}
      });
    } else {}
  }
}
