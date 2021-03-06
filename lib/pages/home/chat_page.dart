import 'package:flutter/material.dart';
import 'package:shamo_app/theme.dart';
import 'package:shamo_app/widgets/chat_tile.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Message Support',
          style: primaryTextStyle.copyWith(fontWeight: medium, fontSize: 18),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget exploreButton() {
      return Container(
        height: 44,
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            backgroundColor: primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          child: Text(
            'Explore Store',
            style: primaryTextStyle.copyWith(fontWeight: medium, fontSize: 16),
          ),
        ),
      );
    }

    Widget emptyChat() {
      return Expanded(
        child: Container(
          color: backgroundColor3,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon_headset.png',
                width: 80,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Opss no message yet?',
                style:
                    primaryTextStyle.copyWith(fontWeight: medium, fontSize: 16),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'You have never done a transaction',
                style: secondaryTextStyle,
              ),
              SizedBox(
                height: 20,
              ),
              exploreButton()
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
          child: Container(
              color: backgroundColor3,
              width: double.infinity,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                children: [ChatTile()],
              )));
    }

    return Column(
      children: [header(), content()],
    );
  }
}
