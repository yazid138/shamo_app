import 'package:flutter/material.dart';
import 'package:shamo_app/theme.dart';

class ProductTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          bottom: defaultMargin, left: defaultMargin, right: defaultMargin),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/image_shoes.png',
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Football',
                  style: subtitleTextStyle.copyWith(fontSize: 12),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Predator 20.3 Firm Ground',
                  style: primaryTextStyle.copyWith(
                      fontWeight: semibold, fontSize: 16),
                ),
                SizedBox(
                  height: 6,
                ),
                Text('\$68,47', style: priceTextStyle.copyWith(fontWeight: medium),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
