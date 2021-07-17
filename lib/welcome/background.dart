import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: double.infinity,
      color: Colors.pinkAccent[400],
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          child,
          Positioned(
              top: -35,
              left: -85,
              child: Image.asset(
                "assets/images/spiral.png",
                width: size.width * 0.6,
              )),
          Positioned(
              bottom: -45,
              right: -85,
              child: Image.asset(
                "assets/images/spiral.png",
                width: size.width * 0.6,
              )),
        ],
      ),
    );
  }
}
