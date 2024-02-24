import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';

import 'package:bookly_app/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_book_list_view.dart';
import 'package:flutter/material.dart';


class HomeViewBody extends StatelessWidget {
    const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const FeaturedBookListView(),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding:const  EdgeInsets.symmetric(horizontal: 18),
            child: Text(
              'Newest Books',
              style: Styles.textStyle24,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          
        ],
      ), 
        ),
       const SliverToBoxAdapter(
          child:  BestSellerListView(),
        )
      ],
    );
  }
}
