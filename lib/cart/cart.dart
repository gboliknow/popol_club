import 'package:flutter/material.dart';
import 'package:popl_club_8/cart/body_cart.dart';
import 'package:popl_club_8/cart/place_order.dart';
import 'package:popl_club_8/components/constants.dart';

import 'package:popl_club_8/home/tabs_screen.dart';

class Cart extends StatelessWidget {
  final int dollars = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return TabsScreen();
                },
              ),
            );
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: kPrimaryColor,
          ),
        ),
        title: Text(
          "Cart",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        centerTitle: true,
      ),
      body: BodyCart(),
    );
  }
}
