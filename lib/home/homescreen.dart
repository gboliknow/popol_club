import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:popl_club_8/cart/cart.dart';
import 'package:popl_club_8/components/constants.dart';
import 'package:popl_club_8/components/my_bottom_nav_bar.dart';
import 'package:popl_club_8/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  void _startAddNewTransaction(BuildContext ctx) {
    Size size = MediaQuery.of(ctx).size;
    showModalBottomSheet(
      context: ctx,
      backgroundColor: Colors.transparent,
      builder: (_) {
        return Container(
          height: size.height * 0.35,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              )),
          child: GestureDetector(
            onTap: () {},
            behavior: HitTestBehavior.opaque,
            child: Container(
                padding: EdgeInsets.only(
                  top: 25,
                  left: 25,
                  right: 25,
                  bottom: 25,
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/background.png"),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        child: Container(
                          padding: EdgeInsets.only(
                            left: kDefaultPadding / 2,
                            top: kDefaultPadding / 2,
                            bottom: kDefaultPadding / 2,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: Row(
                            children: <Widget>[
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Update\n",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "Self Test",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 24,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  "Price: N10",
                                  style: TextStyle(
                                      color: kPrimaryColor,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: kPrimaryColor,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  )),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add),
                              ),
                            ),
                            Text(
                              "1",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding: EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: kPrimaryColor,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 12),
                              decoration: BoxDecoration(
                                color: Color(0xFFD81B60),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              width: 220,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    ctx,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return Cart();
                                      },
                                    ),
                                  );
                                },
                                child: Text(
                                  "ADD TO CART",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ))
                  ],
                )),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFFCE4EC),
      appBar: buildAppBar(),
      body: Body(),
      drawer: buildDrawer(context),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  Drawer buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                )),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Drawer Header',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.account_circle,
              color: kPrimaryColor,
            ),
            title: Text('Who we are'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(
              Icons.shop,
              color: kPrimaryColor,
            ),
            title: Text('Orders'),
            trailing: GestureDetector(
                onTap: () => _startAddNewTransaction(context),
                child: Icon(Icons.arrow_forward_ios)),
          ),
          ListTile(
            leading: Icon(
              Icons.countertops_outlined,
              color: kPrimaryColor,
            ),
            title: Text('Coupons'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(
              Icons.payment,
              color: kPrimaryColor,
            ),
            title: Text('Payment'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: kPrimaryColor,
            ),
            title: Text('Logout'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      flexibleSpace: Image(
        image: AssetImage("assets/images/background.png"),
        fit: BoxFit.cover,
      ),
      elevation: 0,
      title: Text("Popol club"),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/images/alarm.png"),
        ),
        SizedBox(
          width: 10,
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/images/shop.png"),
        ),
      ],
    );
  }
}
