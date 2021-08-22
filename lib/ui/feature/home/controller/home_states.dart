import 'package:coding_test/data/models/new_arrivals_products_response.dart';
import 'package:coding_test/data/models/new_shops_response.dart';
import 'package:coding_test/data/models/stories_response.dart';
import 'package:coding_test/data/models/trending_products_response.dart';
import 'package:equatable/equatable.dart';

abstract class HomeState extends Equatable{}

class HomeLoadingState extends HomeState{
  @override
  List<Object> get props => [];
}

class TrendingProductsLoadedState extends HomeState{

  final List<TrendingProductsResponse> response;

  TrendingProductsLoadedState(this.response);

  @override
  List<Object> get props => [response];
}

class NewShopLoadedState extends HomeState{

  final List<NewShopsResponse> response;

  NewShopLoadedState(this.response);

  @override
  List<Object> get props => [response];
}

class NewArrivalsProductsLoadedState extends HomeState{

  final List<NewArrivalsProductsResponse> response;

  NewArrivalsProductsLoadedState(this.response);

  @override
  List<Object> get props => [response];
}

class NewProductsStoriesLoadedState extends HomeState{

  final List<StoriesResponse> response;

  NewProductsStoriesLoadedState(this.response);

  @override
  List<Object> get props => [response];
}

class HomeErrorState extends HomeState{
  @override
  List<Object> get props => [];
}