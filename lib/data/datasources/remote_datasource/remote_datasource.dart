import 'dart:io';

import 'package:coding_test/data/models/new_arrivals_products_response.dart';
import 'package:coding_test/data/models/new_shops_response.dart';
import 'package:coding_test/data/models/stories_response.dart';
import 'package:coding_test/data/models/trending_products_response.dart';
import 'package:coding_test/data/models/trending_seller_response.dart';


abstract class RemoteDataSource {
  Future<List<TrendingSellerResponse>> getTrendingSellers();
  Future<List<TrendingProductsResponse>> getTrendingProducts();
  Future<List<NewArrivalsProductsResponse>> getNewArrivalProducts();
  Future<List<StoriesResponse>> getStories();
  Future<List<NewShopsResponse>> getNewShops();
}