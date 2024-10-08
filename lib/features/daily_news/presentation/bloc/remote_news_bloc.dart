import 'package:business_logic/features/daily_news/domain/usecases/get_news.dart';
import 'package:business_logic/features/daily_news/presentation/bloc/remote_news_event.dart';
import 'package:business_logic/features/daily_news/presentation/bloc/remote_news_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RemoteNewsBloc extends Bloc<RemoteNewsEvent, RemoteNewsState> {

  final GetNewsUseCase _getNewsUseCase;

  RemoteNewsBloc(this._getNewsUseCase) : super(const RemoteNewsLoading()){
    on<FetchRemoteNews> (_onFetchRemoteNews);
  }
}

void _onFetchRemoteNews(FetchRemoteNews event, Emitter<RemoteNewsState> emit)async {
  final result = await _getNewsUseCase();


}