import 'package:corona_virus/viewModels/newsArticleListViewModel.dart';
import 'package:corona_virus/viewModels/newsArticleViewModel.dart';
import 'package:flutter/material.dart';

class NewsList extends StatelessWidget {

  NewsAricleListViewModel _newsAricleListViewModel = NewsAricleListViewModel();
  NewsList(){ 
    _newsAricleListViewModel.populateTopHeadlines();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}