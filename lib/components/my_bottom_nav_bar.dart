import 'package:flutter/material.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(),
      height: 60,
      decoration: BoxDecoration(
        color: Color(0xFFD81B60),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: Color(0xFFFCE4EC).withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Image.asset(
              "assets/images/home.png",
              height: 5,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset("assets/images/box.png"),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset("assets/images/chat.png"),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset("assets/images/contact.png"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
