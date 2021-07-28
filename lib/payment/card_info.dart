import 'package:flutter/material.dart';

import 'package:popl_club_8/components/constants.dart';
import 'package:popl_club_8/payment/card.dart';

class CardInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: kPrimaryColor,
          ),
        ),
        title: Text(
          "Payment",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(
                    "How would you like to pay against your selected products",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return BankCard();
                          },
                        ),
                      );
                    },
                    child: CardDetails(
                      name: "assets/images/card1.png",
                      title: "Credit/Debit card ",
                      subtitle: "Pay with Visa or Mastercard",
                    ),
                  ),
                  CardDetails(
                    name: "assets/images/card2.png",
                    title: "Google Play",
                    subtitle: "Pay with Google play",
                  ),
                  CardDetails(
                    name: "assets/images/card3.png",
                    title: "PayPal",
                    subtitle: "Pay with PayPal",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return BankCard();
                    },
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                width: double.infinity,
                height: 49,
                child: Center(
                  child: Text(
                    "Next",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}

class CardDetails extends StatelessWidget {
  final String name;
  final String title;
  final String subtitle;

  const CardDetails({
    this.name,
    this.title,
    this.subtitle,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 60,
        height: 60,
        clipBehavior: Clip.hardEdge,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: kPrimaryColor.withOpacity(0.1)),
        ),
        child: Image.asset(
          name,
          fit: BoxFit.cover,
          width: 30,
          height: 30,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
      ),
      trailing: Icon(Icons.arrow_forward_ios),
    );
  }
}
