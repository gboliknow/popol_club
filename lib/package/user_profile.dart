import 'package:flutter/material.dart';
import 'package:popl_club_8/components/constants.dart';
import 'package:auto_size_text/auto_size_text.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: kPrimaryColor,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(45),
                    )),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/holder.png"),
                  radius: 40,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Muhammad Zain",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "Syed Bukhari",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 36,
            ),
            DetailsRow(
              name: "Phone Number:",
              digit: "+333************",
            ),
            SizedBox(height: 20),
            DetailsRow(
              name: "Address:",
              digit: "2660-6B Razabad Shahshams Road\n Multan, Pakistan",
            ),
            SizedBox(height: 20),
            DetailsRow(
              name: "Password:",
              digit: "************",
            ),
            Expanded(child: SizedBox()),
            Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              width: size.width * 0.7,
              height: 49,
              child: GestureDetector(
                onTap: () {},
                child: Center(
                  child: Text(
                    "Save Setting",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
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
        AutoSizeText(
          name,
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        AutoSizeText(
          digit,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
