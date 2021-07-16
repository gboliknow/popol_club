import 'package:flutter/material.dart';
import 'package:popl_club_8/components/constants.dart';

class Delivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Package Track",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  "assets/images/svg2.png",
                  height: size.height * 0.2,
                ),
              ),
              SizedBox(height: 30),
              Stack(
                children: [
                  Line(),
                  Container(
                    child: Column(children: [
                      TrackRow(name: "Préparation"),
                      SizedBox(height: 70),
                      Row(
                        children: <Widget>[
                          Dot(visible: false),
                          SizedBox(width: 26),
                          Expanded(
                            child: Text(
                              "Delivery",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: kPrimaryColor,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 70),
                      TrackRow(name: "Finish"),
                    ]),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.1),
              Text(
                "Package",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 10),
              DetailsRow(
                name: "Tracking number: ",
                digit: "DXE-BD-002131756",
              ),
              SizedBox(height: 10),
              DetailsRow(
                name: "Order Creation:",
                digit: "19 Sep - 2021 ",
              ),
              SizedBox(height: 10),
              DetailsRow(
                name: "Estimated Delivery:",
                digit: "20 Sep - 24 Sep 2021",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailsRow extends StatelessWidget {
  final String name;
  final String digit;
  const DetailsRow({
    Key key,
    this.name,
    this.digit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Colors.grey[400],
          ),
        ),
        Text(
          digit,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}

class TrackRow extends StatelessWidget {
  final String name;
  const TrackRow({
    Key key,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Dot(visible: true),
        SizedBox(width: 26),
        Expanded(
          child: Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.grey[400],
            ),
          ),
        )
      ],
    );
  }
}

class Dot extends StatelessWidget {
  final bool visible;

  const Dot({Key key, this.visible = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: visible ? Colors.grey[400] : kPrimaryColor,
      ),
    );
  }
}

class Line extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      bottom: 10,
      width: 2,
      left: 5,
      child: Container(
        color: Colors.grey[400],
      ),
    );
  }
}
