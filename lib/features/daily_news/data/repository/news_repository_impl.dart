import 'dart:io';

import 'package:business_logic/core/constants/constants.dart';
import 'package:business_logic/features/daily_news/data/data_sources/remote/news_api_service.dart';
import 'package:business_logic/features/daily_news/domain/repository/news_repository.dart';
import 'package:dio/dio.dart';
import '../../../../core/resources/data_state.dart';
import '../model/News.dart';

class NewsRepositoryImpl implements NewsRepository{
  final NewsApiService _newsApiService;
  NewsRepositoryImpl(this._newsApiService);

  @override
  Future<DataState<List<NewsModel>>> getDailyNews() async{
    try{
      final httpResponse = await _newsApiService.getDailyNews(
        apiKey: apiKey,
        country: country,
        category: category,
      );
      if(httpResponse.response.statusCode == HttpStatus.ok){
        return DataSuccess(httpResponse.data);
      }
      else{
        return DataFailed(
          DioException(
            response: httpResponse.response,
            error: httpResponse.response.statusMessage,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions,
          ),
        );
      }
    }on DioException catch(e){
      return DataFailed(e);
    }
  }
}