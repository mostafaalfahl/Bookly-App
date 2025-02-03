import 'package:bookly_app/core/widgets/custom_double_button.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/functions/launch_url.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});

  final double radius = 16;
  final BookModel bookModel;

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
            onPressed: () {
              customLaunchUrl(context, bookModel.volumeInfo.previewLink);
            },
            text: getText(bookModel),
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

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Available';
    } else {
      return 'Free Preview';
    }
  }
}
