import 'package:flutter/material.dart';
import 'package:popl_club_8/cart/place_order.dart';

import 'package:popl_club_8/components/constants.dart';
import 'package:popl_club_8/home/components/product_widget.dart';
import 'package:popl_club_8/payment/card_info.dart';

class BodyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    final int dollars = 100;
    // it enable scrolling on small device
    return Padding(
      padding: const EdgeInsets.all(22.0),
      child: Column(
        children: [
          Expanded(
              flex: 9,
              child: Center(
                child: Image.asset("assets/images/cart.png"),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "TOTAL",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
              Text(
                "\$$dollars",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            width: double.infinity,
            height: 49,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CardInfo();
                    },
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Continue",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
