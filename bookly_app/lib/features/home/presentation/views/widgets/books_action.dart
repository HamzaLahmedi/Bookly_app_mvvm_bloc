import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child:  Row(
        children: [
          Expanded(
            child: CustomButton(
              backgroundColor: Colors.white,
              
              borderRadius:const BorderRadius.only(
                bottomLeft: Radius.circular(12),
                topLeft: Radius.circular(12),
              ),
              buttonText: '19.99£',
              textStyle: Styles.textStyle22.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
            ),
          ),
          Expanded(
            child: CustomButton(
              backgroundColor:const Color(0xffEF8262),
              
              borderRadius:const BorderRadius.only(
                bottomRight: Radius.circular(12),
                topRight: Radius.circular(12),
                
              ),
              
              buttonText: 'Free Preview',
              textStyle: Styles.textStyle22.copyWith(
                color: Colors.black
              ),
            ),
          ),
        ],
      ),
    );
  }
}
