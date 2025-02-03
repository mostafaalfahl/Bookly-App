import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/view_model/search_books_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_search_text_field.dart';
import 'search_books_list_view.dart';

class SearchViewBody extends StatelessWidget {
  SearchViewBody({super.key});

  final TextEditingController controller = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 16,
      ),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            CustomSearchTextFormField(
              onPressed: () {
                onSearch(context, controller.text);
                controller.clear();
              },
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Please Enter a Topic Name';
                }
                return null;
              },
              onSubmitted: (value) async {
                onSearch(context, value);
              },
              controller: controller,
            ),
            const SizedBox(
              height: 16,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Search Results',
                style: Styles.textStyle18,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Expanded(
              child: SearchBooksListView(),
            ),
          ],
        ),
      ),
    );
  }

  void onSearch(context, value) async {
    if (formKey.currentState!.validate()) {
      await BlocProvider.of<SearchBooksCubit>(context)
          .fetchSearchBooks(searchKeyWord: value);
    }
  }
}
