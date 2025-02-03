import 'package:flutter/material.dart';

class CustomShimmerImageList extends StatelessWidget {
  const CustomShimmerImageList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .27,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(
          right: 16,
          left: 16,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              right: 8,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                16,
              ),
              child: AspectRatio(
                aspectRatio: 2.6 / 4,
                child: Container(
                  color: Colors.grey,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
