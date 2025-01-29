import 'package:flutter/material.dart';

class CustomLoadingIdicator extends StatelessWidget {
  const CustomLoadingIdicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
