import 'package:equatable/equatable.dart';

class NewsEntity extends Equatable {
  final int? id;
  final String? title;
  final String? description;
  final String? imageUrl;
  final String? url;
  final String? publishedAt;
  final String? content;

  const NewsEntity({
    this.id,
    this.title,
    this.description,
    this.imageUrl,
    this.url,
    this.publishedAt,
    this.content,
  });

  @override
  // TODO: implement props
  List<Object?> get props {
    return [
      id,
      title,
      description,
      imageUrl,
      url,
      publishedAt,
      content,
    ];
  }

}