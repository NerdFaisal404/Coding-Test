import 'dart:io';

import 'package:coding_test/core/network/network_info.dart';
import 'package:coding_test/data/datasources/remote_datasource/remote_datasource.dart';
import 'package:coding_test/data/models/new_arrivals_products_response.dart';
import 'package:coding_test/data/models/new_shops_response.dart';
import 'package:coding_test/data/models/stories_response.dart';
import 'package:coding_test/data/models/trending_products_response.dart';
import 'package:coding_test/data/models/trending_seller_response.dart';
import 'package:coding_test/data/repositories/repository.dart';

class RepositoryImpl extends Repository {
  final RemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  RepositoryImpl({required this.remoteDataSource, required this.networkInfo});

  @override
  Future<List<NewArrivalsProductsResponse>> getNewArrivalProducts() {
    return remoteDataSource.getNewArrivalProducts();
  }

  @override
  Future<List<StoriesResponse>> getStories() {
    return remoteDataSource.getStories();
  }

  @override
  Future<List<TrendingProductsResponse>> getTrendingProducts() {
    return remoteDataSource.getTrendingProducts();
  }

  @override
  Future<List<TrendingSellerResponse>> getTrendingSellers() {
    return remoteDataSource.getTrendingSellers();
  }

  @override
  Future<List<NewShopsResponse>> getNewShops() {
    return remoteDataSource.getNewShops();
  }
}
