import 'dart:io';

import 'package:coding_test/core/network/network_info.dart';
import 'package:coding_test/data/datasources/remote_datasource/remote_datasource.dart';
import 'package:coding_test/data/models/new_arrivals_products_response.dart';
import 'package:coding_test/data/models/stories_response.dart';
import 'package:coding_test/data/models/trending_products_response.dart';
import 'package:coding_test/data/models/trending_seller_response.dart';
import 'package:coding_test/data/repositories/repository.dart';
import 'package:flutter/material.dart';

class RepositoryImpl extends Repository {
  final RemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  RepositoryImpl({required this.remoteDataSource, required this.networkInfo});

  @override
  Future<NewArrivalsProductsResponse> getNewArrivalProducts() {
    return remoteDataSource.getNewArrivalProducts();
  }

  @override
  Future<StoriesResponse> getStories() {
    // TODO: implement getStories
    throw UnimplementedError();
  }

  @override
  Future<TrendingProductsResponse> getTrendingProducts() {
    return remoteDataSource.getTrendingProducts();
  }

  @override
  Future<TrendingSellerResponse> getTrendingSellers() {
    // TODO: implement getTrendingSellers
    throw UnimplementedError();
  }
}
