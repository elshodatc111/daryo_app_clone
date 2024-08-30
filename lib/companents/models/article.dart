import 'package:daryo_uz_clone/companents/models/source.dart';

class Article {
  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  Article({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      source: Source.fromJson(json['source']),
      author: json['author'] ?? "no date",
      title: json['title'] ?? "no date",
      description: json['description'],
      url: json['url'] ?? "",
      urlToImage: json['urlToImage'] ?? "https://daryo.uz/static/2023/08/64cb723209f70.jpg",
      publishedAt: json['publishedAt'] ?? "no date",
      content: json['content'] ?? "no date",
    );
  }
}
