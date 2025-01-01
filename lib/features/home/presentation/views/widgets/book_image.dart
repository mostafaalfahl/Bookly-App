import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  const BookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 8,
      ),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(
              12,
            ),
          ),
          child: Image.asset(
            fit: BoxFit.fill,
            AssetsData.testImage,
          ),
        ),
      ),
    );
  }
}
