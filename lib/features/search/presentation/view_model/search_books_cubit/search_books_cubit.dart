import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/models/book_model/book_model.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepo) : super(SearchBooksInitial());

  final SearchRepo searchRepo;

  Future<void> fetchSearchBooks({required String searchKeyWord}) async {
    emit(SearchBooksLoading());

    var result =
        await searchRepo.fetchSearchBooks(searchKeyWord: searchKeyWord);
    result.fold(
      (failure) => emit(
        SearchBooksFailure(
          errorMesage: failure.errorMessage,
        ),
      ),
      (books) => emit(
        SearchBooksSuccess(
          books: books,
        ),
      ),
    );
  }
}
