import 'package:flutter/material.dart';
import 'package:popl_club_8/sign_up/screen.dart';
import 'package:popl_club_8/welcome/background.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return SignUp();
              },
            ),
          );
        },
        child: Background(
          child: Center(
            child: Column(
              children: [
                Spacer(),
                Image.asset(
                  "assets/images/logo.png",
                  height: 100,
                ),
                Text(
                  "Popol Club",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "“Le partenaire de votre plaisir securitaire”",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
                Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
