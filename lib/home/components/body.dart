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
    return Container(
      color: kBackgroundColor.withOpacity(0.9),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HeaderWithSearchBox(size: size),
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Product",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
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
              name: "Condoms F/M",
              productImage: "assets/images/Group.png",
            ),
            ProductWidget(
              name: "Pregnancy Test",
              productImage: "assets/images/avater2.png",
            ),
            ProductWidget(
              name: "Self Test",
              productImage: "assets/images/avater3.png",
            ),
          ],
        ),
      ),
    );
  }
}
