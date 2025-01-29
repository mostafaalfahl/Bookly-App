import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errormsg});
  final String errormsg;

  @override
  Widget build(BuildContext context) {
    return Text(
      errormsg,
      style: Styles.textStyle18,
    );
  }
}
