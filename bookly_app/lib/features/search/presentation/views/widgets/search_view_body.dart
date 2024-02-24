import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_searcy_text_field.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomSearchTextField(),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Search Result',
              style: Styles.textStyle22,
            ),
            const SizedBox(
              height: 16,
            ),
            const Expanded(
              child: SearchResultListView(),
            ),
          ],
        ),
      ),
    );
  }
}
