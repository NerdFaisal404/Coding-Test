import 'dart:convert';

import 'package:coding_test/core/network/api_base_helper.dart';
import 'package:coding_test/data/models/new_arrivals_products_response.dart';
import 'package:coding_test/data/models/new_shops_response.dart';
import 'package:coding_test/data/models/stories_response.dart';
import 'package:coding_test/data/models/trending_products_response.dart';
import 'package:coding_test/data/models/trending_seller_response.dart';
import 'package:coding_test/utils/constant.dart';
import 'remote_datasource.dart';

class RemoteDataSourceImpl extends RemoteDataSource {
  final ApiBaseHelper helper;

  RemoteDataSourceImpl({required this.helper});

  @override
  Future<List<NewArrivalsProductsResponse>> getNewArrivalProducts() async {
    var response = await helper.get(NetworkConstants.NEW_ARRIVALS);
    final responseData = json.encode(response.data);
    return newArrivalsProductsResponseFromJson(responseData).first;
  }

  @override
  Future<List<StoriesResponse>> getStories() async {
    var response = await helper.get(NetworkConstants.STORIES);
    final responseData = json.encode(response.data);
    return storiesResponseFromJson(responseData).first;
  }

  @override
  Future<List<TrendingProductsResponse>> getTrendingProducts() async {
    var response = await helper.get(NetworkConstants.TRENDING_PRODUCTS);
    final responseData = json.encode(response.data);
    return trendingProductsResponseFromJson(responseData).first;
  }

  @override
  Future<List<TrendingSellerResponse>> getTrendingSellers() async {
    var response = await helper.get(NetworkConstants.TRENDING_SELLER);
    final responseData = json.encode(response.data);
    return trendingSellerResponseFromJson(responseData).first;
  }

  @override
  Future<List<NewShopsResponse>> getNewShops() async{
    var response = await helper.get(NetworkConstants.NEW_SHOPS);
    final responseData = json.encode(response.data);
    return newShopsResponseFromJson(responseData).first;
  }
}
