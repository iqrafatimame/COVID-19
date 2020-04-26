
import 'package:corona_virus/newsArticle.dart';
import 'package:corona_virus/service.dart';
import 'package:corona_virus/viewModels/newsArticleViewModel.dart';
import 'package:flutter/cupertino.dart';
class NewsAricleListViewModel extends ChangeNotifier{ 

  List<NewsArticleviewModel> articles = List<NewsArticleviewModel>();

  void populateTopHeadlines() async { 
    List<NewsArticle> newsArticle =  await WebService().fetchLatestHeadlines();
    this.articles = newsArticle.map((article) => NewsArticleviewModel(article: article)).toList();
    notifyListeners();

  }
}