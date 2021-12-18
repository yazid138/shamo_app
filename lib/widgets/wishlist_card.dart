import 'package:flutter/material.dart';
import 'package:shamo_app/theme.dart';

class WishlistCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: backgroundColor4),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/image_shoes.png',
                width: 60,
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
                    'Terrex Urban Low',
                    style: primaryTextStyle.copyWith(fontWeight: semibold),
                  ),
                  Text(
                    '\$143,98',
                    style: priceTextStyle,
                  )
                ],
              ),
            ),
            Image.asset(
              'assets/button_wishlist_blue.png',
              width: 34,
            )
          ],
        ),
      ),
    );
  }
}
