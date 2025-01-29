import 'package:bookly_app/features/home/presentation/views/widgets/book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .14,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const BookImage(
            imageUrl:
                'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.gettyimages.com%2Fphotos%2Fbook&psig=AOvVaw1pCiXP5qPK6gCLrw7hfQA3&ust=1738194774668000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCPjE8KPOmYsDFQAAAAAdAAAAABAE',
          );
        },
      ),
    );
  }
}
