import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      
      
      itemCount: 15,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const BestSellerListViewItem();
      },
    );
  }
}