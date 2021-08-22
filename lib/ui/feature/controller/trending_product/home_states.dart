import 'package:coding_test/data/models/new_arrivals_products_response.dart';
import 'package:coding_test/data/models/trending_products_response.dart';
import 'package:coding_test/data/models/trending_seller_response.dart';
import 'package:equatable/equatable.dart';

abstract class HomeState extends Equatable{}

class HomeLoadingState extends HomeState{
  @override
  List<Object> get props => [];
}

class TrendingLoadedState extends HomeState{

  final TrendingProductsResponse response;

  TrendingLoadedState(this.response);

  @override
  List<Object> get props => [response];
}

class NewArrivalsProductsLoadedState extends HomeState{

  final NewArrivalsProductsResponse response;

  NewArrivalsProductsLoadedState(this.response);

  @override
  List<Object> get props => [response];
}

class HomeErrorState extends HomeState{
  @override
  List<Object> get props => [];
}