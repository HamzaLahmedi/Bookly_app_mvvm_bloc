import 'package:bookly_app/features/home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:  Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            CustomBookDetailsAppBar(),
          ],
        ),
      ),
    );
  }
}