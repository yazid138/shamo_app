import 'package:flutter/material.dart';
import 'package:shamo_app/theme.dart';
import 'package:shamo_app/widgets/wishlist_card.dart';

class WishlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text('Favorite Shoes'),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyWishlist() {
      return Expanded(
          child: Container(
        color: backgroundColor3,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image_wishlist.png',
              width: 74,
            ),
            SizedBox(
              height: 23,
            ),
            Text(
              'You don\'t have dream shoes?',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Let\'s find your favorite shoes',
              style: secondaryTextStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 44,
              child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: Text(
                    'Explore Store',
                    style: primaryTextStyle.copyWith(
                        fontWeight: medium, fontSize: 16),
                  )),
            )
          ],
        ),
      ));
    }

    Widget content() {
      return Expanded(
          child: Container(
        color: backgroundColor3,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            WishlistCard(),
            WishlistCard(),
            WishlistCard(),
          ],
        ),
      ));
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
