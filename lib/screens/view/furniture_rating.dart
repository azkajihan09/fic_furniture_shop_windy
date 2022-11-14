import 'package:fic_furniture_shop_windy/data/furniture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FurnitureRating extends StatelessWidget {
  final double cookierating;

  const FurnitureRating({
    Key? key,
    required this.cookierating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: RatingBar.builder(
        initialRating: cookierating,
        itemSize: 18,
        direction: Axis.horizontal,
        allowHalfRating: true,
        ignoreGestures: true,
        itemCount: 5,
        itemPadding: const EdgeInsets.only(right: 4.0),
        itemBuilder: (context, _) => Image.asset(
          'assets/icons/ic_star_filled.png',
        ),
        onRatingUpdate: (rating) {},
      ),
    );
  }
}
