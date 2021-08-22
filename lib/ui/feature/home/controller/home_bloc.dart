import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:coding_test/data/repositories/repository.dart';
import 'package:meta/meta.dart';
import 'home_states.dart';
part 'home_event.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final Repository _repository;

  HomeBloc(this._repository) : super(HomeLoadingState());

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    if (event is HomeTrendingEvent) {
      yield HomeLoadingState();
      final trendingResponse = await _repository.getTrendingProducts();
      yield TrendingLoadedState(trendingResponse);
    }else if (event is HomeNewArrivalEvent) {
      yield HomeLoadingState();
      final homeArrivalResponse = await _repository.getNewArrivalProducts();
      yield NewArrivalsProductsLoadedState(homeArrivalResponse);
    }
  }
}
