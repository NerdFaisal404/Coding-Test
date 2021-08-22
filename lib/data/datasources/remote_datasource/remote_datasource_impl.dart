import 'dart:io';
import 'package:coding_test/core/network/api_base_helper.dart';
import 'package:flutter/cupertino.dart';

import 'remote_datasource.dart';



class RemoteDataSourceImpl extends RemoteDataSource{

  final ApiBaseHelper? helper;

  RemoteDataSourceImpl({@required this.helper});
  
}