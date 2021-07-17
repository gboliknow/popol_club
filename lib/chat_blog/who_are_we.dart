import 'package:flutter/material.dart';
import 'package:popl_club_8/components/category_card.dart';
import 'package:popl_club_8/components/constants.dart';
import 'package:auto_size_text/auto_size_text.dart';

class WhoAreWe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title: Text(
          "Who we are",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
                color: Colors.black,
              )),
          SizedBox(
            width: 2,
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            Text(
              "A short intro about us",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 16,
            ),
            Center(
              child: AutoSizeText(
                "I’m a positive person. I’m a UI UX designer \n form Pakistan. I’m here to help you out to design your app screens.",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 46,
            ),
            Text(
              "WHO WE ARE",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(
                left: 28,
                right: 28,
              ),
              child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: <Widget>[
                    CategoryCard(
                      title: "Sécurité",
                      svgSrc: "assets/images/waw1.png",
                      press: () {},
                    ),
                    CategoryCard(
                      title: "Rapidité",
                      svgSrc: "assets/images/waw2.png",
                      press: () {},
                    ),
                    CategoryCard(
                      title: "Discrétion",
                      svgSrc: "assets/images/waw3.png",
                      press: () {},
                    ),
                    CategoryCard(
                      title: "Jeunes",
                      svgSrc: "assets/images/waw4.png",
                      press: () {},
                    ),
                    CategoryCard(
                      title: "Mobile First",
                      svgSrc: "assets/images/waw5.png",
                      press: () {},
                    ),
                    CategoryCard(
                      title: "Fetards",
                      svgSrc: "assets/images/waw6.png",
                      press: () {},
                    ),
                  ]),
            ))
          ],
        ),
      ),
    );
  }
}
