import 'dart:convert' as convert;
import 'package:daryo_uz_clone/companents/models/all_news.dart';
import 'package:http/http.dart' as http;

Future<AllNews?> getArticles({url = "https://newsapi.org/v2/everything?q=tesla&from=2024-07-30&sortBy=publishedAt&apiKey=33100da6027348328dea31e329b652bd"}) async{
  Uri uri = Uri.parse(url);
  var response = await http.get(uri);
  if(response.statusCode==200){
    var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
    return AllNews.fromJson(jsonResponse);
  }

  return null;
}
