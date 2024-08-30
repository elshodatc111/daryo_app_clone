import 'package:daryo_uz_clone/companents/models/article.dart';

class AllNews {
  String status;
  int totalResults;
  List articles;

  AllNews({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  factory AllNews.fromJson(Map<String, dynamic> json) {
    return AllNews(
      status: json['status']??"",
      totalResults: json['totalResults']??0,
      articles: json['articles'].map((e)=>Article.fromJson(e)).toList(),
    );
  }
}
