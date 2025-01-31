import 'package:bookly_app/core/widgets/custom_double_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  final double radius = 16;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomDoubleButton(
            text: 'Free',
            textColor: Colors.black,
            buttonColor: Colors.white,
            boredrRadius: BorderRadius.only(
              topLeft: Radius.circular(
                radius,
              ),
              bottomLeft: Radius.circular(
                radius,
              ),
            ),
          ),
        ),
        Expanded(
          child: CustomDoubleButton(
            text: 'Free Preview',
            textColor: Colors.white,
            fontSize: 16,
            buttonColor: const Color(0xffEF8262),
            boredrRadius: BorderRadius.only(
              topRight: Radius.circular(
                radius,
              ),
              bottomRight: Radius.circular(
                radius,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
