import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manger/newset_books_cubits/newset_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit,NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: state.books.length,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return  BestSellerListViewItem(
            bookModel: state.books[index],
          );
        },
      );
        } else if (state is NewsetBooksFailure) {
          return CustomErrorMessage(errMessage: state.errMessage);
        }
        else{
          return const  CustomLoadingIndicator();
        }
      },
    );
  }
}
