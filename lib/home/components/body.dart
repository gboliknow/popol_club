import 'package:flutter/material.dart';

import 'package:popl_club_8/components/constants.dart';
import 'package:popl_club_8/home/components/product_widget.dart';

import 'header_with_seachbox.dart';
import 'special_product.dart';
import 'title_with_more_bbtn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(),
          SpecialProducts(),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Featured Product",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        )),
                    child: Text(
                      "View all ",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.normal),
                    ),
                  ),
                )
              ],
            ),
          ),
          ProductWidget(
            price: "5.7",
            country: "Japan",
            name: "Condoms F/M",
            heroTag: "ico",
            productImage: "assets/images/avater3.png",
          ),
          ProductWidget(
            price: "5.7",
            country: "Japan",
            name: "Pregnancy Test",
            heroTag: "ico",
            productImage: "assets/images/avater2.png",
          ),
          ProductWidget(
            price: "5.7",
            country: "Japan",
            name: "Self Test",
            heroTag: "ico",
            productImage: "assets/images/avater3.png",
          ),
        ],
      ),
    );
  }
}
