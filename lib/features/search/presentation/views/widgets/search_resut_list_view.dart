import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/book_list_view_item.dart';

class SearchResutListView extends StatelessWidget {
  const SearchResutListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(
        bottom: 20,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const BookListViewItem();
      },
    );
  }
}
