import 'package:dio/dio.dart';
import 'package:newsapp/Models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=5005c17877fd49ab9f04485b76357d0a&country=us&category=$category');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articlemodel = ArticleModel.fromJson(article);
        articlesList.add(articlemodel);
      }

      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
