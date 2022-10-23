// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:noble/BusinessLayer/Repositories/article_repo.dart';
import 'package:noble/DataAccessLayer/Models/article.dart';

class ArticleController extends GetxController {
  late List<Article> articles = [];
  var articleRepo = ArticleRepo();
  var isLoading = false.obs;
  late List articleReal = [];
  final ArticleController articlesController = ArticleController();
  @override
  void onInit() async {
    isLoading.value = true;
    articles = await articleRepo.getArticles();
    for (var element in articles) {
      print(element.image);
      articleReal.add(element.image);
    }
    print(articles);
    isLoading.value = false;
    super.onInit();
  }
}
