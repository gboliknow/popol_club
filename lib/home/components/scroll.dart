import 'package:flutter/material.dart';

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
      width: size.width * 0.4,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
