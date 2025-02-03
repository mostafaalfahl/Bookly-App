import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_shimmer_book_details.dart';
import 'package:bookly_app/features/search/presentation/view_model/search_books_cubit/search_books_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_books_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class SearchBooksListView extends StatelessWidget {
  const SearchBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.only(
              bottom: 20,
            ),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 8,
                ),
                child: SearchBooksListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is SearchBooksFailure) {
          return CustomErrorWidget(errormsg: state.errorMesage);
        } else if (state is SearchBooksLoading) {
          return Center(
            child: Shimmer.fromColors(
              baseColor: Colors.grey.shade100.withOpacity(0.1),
              highlightColor: Colors.white.withOpacity(0.5),
              child: const CustomShimmerBookDetails(),
            ),
          );
        } else {
          return const Text(
            'There is no results, search for books',
            style: Styles.textStyle14,
          );
        }
      },
    );
  }
}
