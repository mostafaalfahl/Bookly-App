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
                'https://media.istockphoto.com/id/509437680/photo/book-on-white-background.jpg?s=1024x1024&w=is&k=20&c=UODrIDwZ4nXiJjGbKrwxXdzXnI4CmH2DDPpezILhAvU=',
          );
        },
      ),
    );
  }
}
