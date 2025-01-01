import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_image.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_details_app_bar.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.2,
            vertical: 43,
          ),
          child: const BookImage(),
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18.copyWith(
            color: Colors.white.withOpacity(.7),
            fontStyle: FontStyle.italic,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 18,
            bottom: 37,
          ),
          child: BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 8,
          ),
          child: BooksAction(),
        ),
      ],
    );
  }
}
