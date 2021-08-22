import 'dart:io';

import 'package:coding_test/data/models/new_arrivals_products_response.dart';
import 'package:coding_test/data/models/stories_response.dart';
import 'package:coding_test/data/models/trending_products_response.dart';
import 'package:coding_test/data/models/trending_seller_response.dart';


abstract class RemoteDataSource {
  Future<TrendingSellerResponse> getTrendingSellers();
  Future<TrendingProductsResponse> getTrendingProducts();
  Future<NewArrivalsProductsResponse> getNewArrivalProducts();
  Future<StoriesResponse> getStories();
}