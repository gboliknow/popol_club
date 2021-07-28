import 'package:flutter/material.dart';
import 'package:popl_club_8/home/tabs_screen.dart';
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
                return TabsScreen();
              },
            ),
          );
        },
        child: Background(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  height: 100,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Popol Club",
                  style: TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
