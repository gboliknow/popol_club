import 'package:flutter/material.dart';
import 'package:popl_club_8/components/constants.dart';

class SpecialProducts extends StatelessWidget {
  const SpecialProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          SpecialProductCard(
            image: "assets/images/image_1.png",
            title: "Samantha",
            country: "Russia",
            price: 10,
            press: () {},
          ),
          SpecialProductCard(
              image: "assets/images/image_2.png",
              title: "Angelica",
              country: "Russia",
              price: 10,
              press: () {}),
          SpecialProductCard(
            image: "assets/images/image_3.png",
            title: "Samantha",
            country: "Russia",
            price: 10,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class SpecialProductCard extends StatelessWidget {
  const SpecialProductCard({
    Key key,
    @required this.image,
    @required this.title,
    @required this.country,
    @required this.price,
    @required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding / 2,
        top: kDefaultPadding / 1,
        bottom: kDefaultPadding / 2.5,
      ),
      width: size.width * 0.45,
      height: size.height * 0.2,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              width: size.width * 0.45,
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/background.png"),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: press,
              child: Container(
                padding: EdgeInsets.only(
                  left: kDefaultPadding / 2,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 0),
                      blurRadius: 90,
                      color: kPrimaryColor.withOpacity(0.23),
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Product Name\n",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 9,
                            ),
                          ),
                          TextSpan(
                            text: "Medical Test".toUpperCase(),
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            topLeft: Radius.circular(20),
                          )),
                      child: Text(
                        '\$$price',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
