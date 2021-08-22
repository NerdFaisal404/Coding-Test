import 'dart:io';

import 'package:coding_test/utils/constant/constant.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import '../failure/exceptions/network_exception.dart';

import 'dio_factory.dart';

class ApiBaseHelper {

  final DioFactory? dioFactory;

  ApiBaseHelper({@required this.dioFactory});

  Future<Response> get(String endUrl) async {
    try {
      // make the network call
      final response = await dioFactory?.getDio().get(
          NetworkConstants.BASE_URL + endUrl);
      //return the response
      return _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
  }

  Future<Response> getWithParams(String endUrl,
      Map<String, dynamic> params) async {

    try {
      // make the network call
      final response = await dioFactory!.getDio().get(
          NetworkConstants.BASE_URL + endUrl,
          queryParameters: params
      );
      //return the response
      return _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
  }

  Response _returnResponse(Response? response) {
    switch (response!.statusCode) {
      case 200:
        return response!;
      case 400:
        throw BadRequestException(response.data.toString());
      case 401:
      case 403:
        var responseJson = response.data;
        throw UnauthorisedException(responseJson["message"].toString());
      case 500:
      default:
        throw FetchDataException('Error occurred while Communication with '
            'Server with StatusCode : ${response.statusCode}');
    }
  }
}



