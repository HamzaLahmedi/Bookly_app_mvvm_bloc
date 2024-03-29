import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manger/similar_books_cubits/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key,  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
          if (state is SimilarBooksSuccess) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * .13,
              child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  
                  return  CustomBookItem(
                    imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,
                  );
                },
              ),
            );
          } else if (state is SimilarBooksFailure) {
            return CustomErrorMessage(errMessage: state.errMessage);
          } else {
            return const CustomLoadingIndicator();
          }
        },
      ),
    );
  }
}
