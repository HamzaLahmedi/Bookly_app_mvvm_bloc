import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingBookSellerItem extends StatelessWidget {
  const RatingBookSellerItem({super.key,  this.mainAxisAlignment=MainAxisAlignment.start, required this.rating,  required this.langue});
final MainAxisAlignment mainAxisAlignment;
final int rating;
final String langue;
  @override
  Widget build(BuildContext context) {
    
    return Row(
      mainAxisAlignment:mainAxisAlignment ,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 14,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          rating.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            langue,
            style: Styles.textStyle16.copyWith(
              
            ),
          ),
        ),
      ],
    );
  }
}
