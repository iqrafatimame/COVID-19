import 'dart:convert';
import 'package:http/http.dart' as http;
import './newsArticle.dart';

class WebService{ 
  Future<List<NewsArticle>> fetchLatestHeadlines() async{
    String url =
    "http://newsapi.org/v2/top-headlines -G \-d country=us \ -d apiKey=77f0014445e74611882f0b264a151a04";
    final response = await http.get(url);
    if(response.statusCode ==200){

      final result = jsonDecode(response.body);
      print(result);
      Iterable list = result["articles"];
      return list.map((article) => NewsArticle.fromJSON(article)).toList();
    }
    else{ 
      throw Exception("Failed to get related news") ;   }
  }
   
  }
