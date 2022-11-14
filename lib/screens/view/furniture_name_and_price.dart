import 'package:fic_furniture_shop_windy/data/furniture.dart';
import 'package:flutter/material.dart';

class FurnitureNameAndPrice extends StatelessWidget {
  final String cookieprice;
  final String cookiename;

  const FurnitureNameAndPrice({
    Key? key,
    required this.cookieprice,
    required this.cookiename,
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
            cookiename,
            style: const TextStyle(
              color: Color(0XFF4A4543),
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Rp ${cookieprice}',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Color(0XFF9A9390),
            ),
          ),
        ],
      ),
    );
  }
}
