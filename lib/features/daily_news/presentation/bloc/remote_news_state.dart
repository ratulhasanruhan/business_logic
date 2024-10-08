import 'package:business_logic/features/daily_news/domain/entities/news.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

abstract class RemoteNewsState extends Equatable {
  final List<NewsEntity>? news;
  final DioException? error;

  const RemoteNewsState._(this.news, this.error);

  @override
  List<Object?> get props => [news, error];
}

class RemoteNewsLoading extends RemoteNewsState {
  const RemoteNewsLoading() : super._(null, null);
}

class RemoteNewsSuccess extends RemoteNewsState {
  const RemoteNewsSuccess(List<NewsEntity> news) : super._(news, null);
}

class RemoteNewsFailed extends RemoteNewsState {
  const RemoteNewsFailed(DioException error) : super._(null, error);
}