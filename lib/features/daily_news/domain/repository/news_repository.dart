import 'package:business_logic/core/resources/data_state.dart';
import 'package:business_logic/features/daily_news/domain/entities/news.dart';

abstract class NewsRepository {
  Future<DataState<List<NewsEntity>>> getDailyNews();
}