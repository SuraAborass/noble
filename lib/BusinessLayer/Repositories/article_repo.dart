// ignore_for_file: avoid_print

import '../../DataAccessLayer/Clients/article_client.dart';
import '../../DataAccessLayer/Models/article.dart';

class ArticleRepo {
  var client = ArticleClient();

  Future<List<Article>> getArticles() async {
    var response = await client.getArticles();

    if (response.isNotEmpty) {
      //json.decode(response.toString()).cast<Map<String, dynamic>>();
      return response.map<Article>((item) => Article.fromMap(item)).toList();
    }
    return [];
  }
}
