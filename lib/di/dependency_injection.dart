import 'package:get_it/get_it.dart';
import '../core/network/api_base_helper.dart';
import '../core/network/dio_factory.dart';

final locator  = GetIt.instance;

void setup() {
  locator.registerSingleton(DioFactory());
  locator.registerSingleton(ApiBaseHelper(dioFactory: locator()));
}