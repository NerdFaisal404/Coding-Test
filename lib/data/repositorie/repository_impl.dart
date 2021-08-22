import 'dart:io';

import 'package:coding_test/core/network/network_info.dart';
import 'package:coding_test/data/datasources/remote_datasource/remote_datasource.dart';
import 'package:coding_test/data/repositorie/repository.dart';
import 'package:flutter/material.dart';



class RepositoryImpl extends Repository{

  final RemoteDataSource? remoteDataSource;
  final NetworkInfo? networkInfo;

  RepositoryImpl({@required this.remoteDataSource, @required this.networkInfo});


}

