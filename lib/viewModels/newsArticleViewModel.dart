import 'package:corona_virus/newsArticle.dart';

class NewsArticleviewModel { 
  NewsArticle _newsArticle;
  NewsArticleviewModel({NewsArticle article}) : _newsArticle= article;
  String get title{ 
    return _newsArticle.title;
  }

  String get description{ 
    return _newsArticle.description;
  }

  String get imgUrl{ 
    return _newsArticle.urlToImg;
  }

  String get url{ 
    return _newsArticle.url;
  }
  
}
