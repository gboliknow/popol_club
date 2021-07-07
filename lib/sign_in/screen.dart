import 'package:flutter/material.dart';
import 'package:popl_club_8/sign_in/my_header.dart';
import 'package:popl_club_8/sign_up/screen.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFFCE4EC),
      body: SingleChildScrollView(
        child: Center(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            MyHeader(
              image: "assets/icons/coronadr.svg",
              textTop: "SIGN IN",
              textBottom: "Sign In to access your App",
            ),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 350,
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 1,
                      bottom: 1,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      validator: (val) {
                        return RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(val)
                            ? null
                            : "Enter correct email";
                      },
                      decoration: InputDecoration(
                        hintText: "Email",
                        icon: Icon(
                          Icons.person,
                          color: Colors.amber,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Container(
                    width: 350,
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 1,
                      bottom: 1,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: TextFormField(
                      obscureText: !_passwordVisible,
                      decoration: InputDecoration(
                        hintText: "Password",
                        icon: Icon(
                          Icons.lock,
                          color: Colors.amber,
                        ),
                        suffixIcon: IconButton(
                            icon: Icon(
                              // Based on passwordVisible state choose the icon
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Color(0xFFD81B60),
                            ),
                            onPressed: () {
                              // Update the state i.e. toogle the state of passwordVisible variable
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            }),
                        border: InputBorder.none,
                      ),
                      validator: (val) {
                        return val.length < 6
                            ? "Enter Password 6+ characters"
                            : null;
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFFD81B60),
                ),
                width: 220,
                child: Text(
                  "Sign in",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 36,
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: 270,
              padding: EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFFD81B60)),
              child: Text(
                "Sign Up with Facebook",
                style: TextStyle(fontSize: 17, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              width: 270,
              padding: EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFFD81B60)),
              child: Text(
                "Sign Up with Google",
                style: TextStyle(fontSize: 17, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account? ",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                GestureDetector(
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
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(
                        color: Colors.pink,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.overline),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            )
          ]),
        ),
      ),
    );
  }
}
