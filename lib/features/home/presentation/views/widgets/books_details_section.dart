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
          child: const BookImage(
            imageUrl:
                'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.gettyimages.com%2Fphotos%2Fbook&psig=AOvVaw1pCiXP5qPK6gCLrw7hfQA3&ust=1738194774668000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCPjE8KPOmYsDFQAAAAAdAAAAABAE',
          ),
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
