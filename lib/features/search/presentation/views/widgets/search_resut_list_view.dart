import 'package:flutter/material.dart';


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
        // return const BookListViewItem();
        return const Text('');
      },
    );
  }
}
