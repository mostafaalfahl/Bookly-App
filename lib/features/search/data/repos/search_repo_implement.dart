import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImplement extends SearchRepo {
  final ApiService apiService;

  SearchRepoImplement(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks(
      {required String searchKeyWord}) async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:$searchKeyWord');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioException(e));
      }
      return left(
        ServerFailuer(
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
