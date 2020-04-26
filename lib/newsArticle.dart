
class NewsArticle{
  final String title;
  final String description;
  final String urlToImg;
  final String url;

  NewsArticle({this.title, this.description,this.url, this.urlToImg});
  // factory is resposible for creating the new instances of the news object
  factory NewsArticle.fromJSON(Map<String,dynamic> json){
    return NewsArticle(
      title: json['title'],
      description:json['description'],
      urlToImg: json['urlToImage'],
      url: json['url'],
      );
  }
}
  
  