import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_imple.dart';
import 'package:bookly_app/features/search/data/repos/search_repo_implement.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(Dio()),
  );

  getIt.registerSingleton<HomeRepoImple>(
    HomeRepoImple(
      getIt.get<ApiService>(),
    ),
  );
  
  getIt.registerSingleton<SearchRepoImplement>(
    SearchRepoImplement(
      getIt.get<ApiService>(),
    ),
  );
}
