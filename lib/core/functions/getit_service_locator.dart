


import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../Features/home/data/data_sources/home_local_data_source.dart';
import '../../Features/home/data/data_sources/home_remote_data_source.dart';
import '../../Features/home/data/repos/home_repo_implementation.dart';
import '../utils/api_service.dart';

var locator=GetIt.instance;
getItServiceLocator()
{

  locator.registerSingleton<ApiService>(ApiService(dio: Dio()));
  locator.registerSingleton<HomeRepoImplementation>(HomeRepoImplementation(
      homeLocalDataSource: HomeLocalDataSourceImp(),
      homeRemoteDataSource: HomeRemoteDataSourceImp(apiService: locator.get<ApiService>())));
}