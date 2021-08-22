import 'package:coding_test/core/network/api_base_helper.dart';
import 'package:coding_test/data/models/new_arrivals_products_response.dart';
import 'package:coding_test/data/models/stories_response.dart';
import 'package:coding_test/data/models/trending_products_response.dart';
import 'package:coding_test/data/models/trending_seller_response.dart';
import 'package:coding_test/utils/constant/constant.dart';
import 'package:flutter/cupertino.dart';
import 'remote_datasource.dart';



class RemoteDataSourceImpl extends RemoteDataSource{

  final ApiBaseHelper? helper;

  RemoteDataSourceImpl({@required this.helper});

  @override
  Future<NewArrivalsProductsResponse> getNewArrivalProducts() async{
    var response = await helper!.get(NetworkConstants.NEW_ARRIVALS);
    return NewArrivalsProductsResponse.fromJson(response.data);
  }

  @override
  Future<StoriesResponse> getStories() async{
    var response = await helper!.get(NetworkConstants.NEW_ARRIVALS);
    return StoriesResponse.fromJson(response.data);
  }

  @override
  Future<TrendingProductsResponse> getTrendingProducts() async{
    var response = await helper!.get(NetworkConstants.NEW_ARRIVALS);
    return TrendingProductsResponse.fromJson(response.data);
  }

  @override
  Future<TrendingSellerResponse> getTrendingSellers() async{
    var response = await helper!.get(NetworkConstants.NEW_ARRIVALS);
    return TrendingSellerResponse.fromJson(response.data);
  }



}