import 'package:flutter/material.dart';

class CustomShimmerBookDetails  extends StatelessWidget {
  const CustomShimmerBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(
        bottom: 20,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 8,
          ),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(
                    16,
                  ),
                ),
                height: 120,
                width: 70,
              ),
              const SizedBox(
                width: 36,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.grey,
                      width: double.infinity,
                      height: 24,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      color: Colors.grey,
                      width: double.infinity,
                      height: 24,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      color: Colors.grey,
                      width: 150,
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
