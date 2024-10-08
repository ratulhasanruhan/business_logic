import 'package:business_logic/features/daily_news/domain/entities/news.dart';

class NewsModel extends NewsEntity{
  const NewsModel({
    int? id,
    String? title,
    String? description,
    String? imageUrl,
    String? url,
    String? publishedAt,
    String? content,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      imageUrl: json['imageUrl'],
      url: json['url'],
      publishedAt: json['publishedAt'],
      content: json['content'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'imageUrl': imageUrl,
      'url': url,
      'publishedAt': publishedAt,
      'content': content,
    };
  }
}