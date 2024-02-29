import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widgets/custom_error_message.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manger/featured_books_cubits/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit,FeaturedBooksState>(

      builder: (context,state){
        if (state is FeaturedBooksSuccess) {
          return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.books.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return  GestureDetector(
                onTap: (){
                   GoRouter.of(context).push(AppRouter.kBookDetailsView,extra: state.books[index]);
                },
                child: CustomBookItem(
                  imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,
                ),
              );
            },
          ),
        ),
      );
        }else if(state is FeaturedBooksFailure){
          return CustomErrorMessage(errMessage: state.errMessage,);
        }else{
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
