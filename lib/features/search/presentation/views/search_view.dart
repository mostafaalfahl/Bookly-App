import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

import 'widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
      ),
      body: SafeArea(
        child: SearchViewBody(),
      ),
    );
  }
}
