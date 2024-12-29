import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 25,
        ),
        CustomAppBar(),
        CustomListView(),
        Padding(
          padding: EdgeInsets.only(
            top: 36,
            left: 8,
          ),
          child: Text(
            'Best Seller',
            style: Styles.titleMedium,
          ),
        ),
      ],
    );
  }
}
