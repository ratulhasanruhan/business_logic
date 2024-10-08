import 'package:business_logic/core/resources/data_state.dart';
import 'package:business_logic/core/usecases/usecase.dart';
import 'package:business_logic/features/daily_news/domain/entities/news.dart';

import '../repository/news_repository.dart';

class GetNewsUseCase implements UseCase<DataState<List<NewsEntity>>, void>{
  final NewsRepository _newsRepository;
  GetNewsUseCase(this._newsRepository);

  @override
  Future<DataState<List<NewsEntity>>> call(void params) {
    return _newsRepository.getDailyNews();
  }
  
}