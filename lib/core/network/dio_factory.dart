import 'package:coding_test/utils/constant.dart';
import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';

class DioFactory {
  static final DioFactory _singleton = DioFactory._internal();
  Dio? _dio;

  factory DioFactory() {
    return _singleton;
  }

  DioFactory._internal() {
    this._dio = Dio();
    //this._dio.options = options;
    this._dio?.interceptors.add(
          LogInterceptor(
            responseHeader: false,
            requestBody: true,
            responseBody: true,
          ),
        );
    this._dio?.interceptors.add(
        DioCacheManager(CacheConfig(baseUrl: NetworkConstants.BASE_URL))
            .interceptor);
  }

  Dio getDio() => this._dio!;
}
