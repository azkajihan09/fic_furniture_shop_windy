import 'package:fic_furniture_shop_windy/data/furniture.dart';
import 'package:flutter/material.dart';

class FurnitureNameAndPrice extends StatelessWidget {
  final String furniturename;
  final String furnitureprice;

  const FurnitureNameAndPrice({
    Key? key,
    required this.furniturename,
    required this.furnitureprice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          right: 22.0, left: 22.0, top: 15.0, bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            furniturename,
            style: const TextStyle(
              color: Color(0XFF4A4543),
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            furnitureprice,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w400,
              color: Color(0XFF9A9390),
            ),
          ),
        ],
      ),
    );
  }
}
