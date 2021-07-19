import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:popl_club_8/cart/cart.dart';
import 'package:popl_club_8/cart/place_order.dart';
import 'package:popl_club_8/chat_blog/blog.dart';
import 'package:popl_club_8/chat_blog/chat.dart';
import 'package:popl_club_8/chat_blog/who_are_we.dart';
import 'package:popl_club_8/components/constants.dart';

import 'package:popl_club_8/home/components/body.dart';
import 'package:popl_club_8/package/finish.dart';

import 'package:popl_club_8/package/user_profile.dart';
import 'package:popl_club_8/payment/card_info.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;
  String _title;
  Color _title2;
  bool _title3;
  IconData _title4;

  @override
  void initState() {
    _pages = [
      {
        'page': Body(),
        'title': 'Body',
      },
      {
        'page': Blog(),
        'title': 'Your Chat',
      },
      {
        'page': Chat(),
        'title': 'Your Blog',
      },
      {
        'page': UserProfile(),
        'title': 'Your Blog',
      },
    ];
    _title = "jhkh";
    _title2 = Colors.black;
    _title3 = false;
    _title4 = AntDesign.bells;

    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
      switch (index) {
        case 1:
          {
            _title = 'Blog';
            _title2 = Colors.black;
            _title3 = true;
            _title4 = AntDesign.bells;
          }
          break;
        case 2:
          {
            _title = 'La Piara';
            _title2 = kPrimaryColor;
            _title3 = false;
          }
          break;
        case 3:
          {
            _title = 'User Profile';
            _title2 = Colors.black;
            _title3 = true;
            _title4 = Icons.edit;
          }
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedPageIndex == 0
          ? buildAppBar(context)
          : AppBar(
              elevation: 0,
              leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios, color: Colors.black),
              ),
              title: Text(
                _title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: _title2,
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: _title3
                      ? Icon(
                          _title4,
                          color: Colors.black,
                        )
                      : Icon(
                          _title4,
                          color: Colors.white,
                        ),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/holder2.png"),
                  radius: _title3 ? 0 : 20,
                ),
                SizedBox(
                  width: 2,
                ),
              ],
              backgroundColor: Colors.white,
            ),
      extendBodyBehindAppBar: _selectedPageIndex == 0 ? true : false,
      drawer: buildDrawer(context),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: kPrimaryColor,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        currentIndex: _selectedPageIndex,
        iconSize: 28,
        // type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: kPrimaryColor,
            icon: Icon(Entypo.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: kPrimaryColor,
            icon: Icon(Entypo.newsletter),
            label: 'Blog',
          ),
          BottomNavigationBarItem(
            backgroundColor: kPrimaryColor,
            icon: Icon(Entypo.chat),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            backgroundColor: kPrimaryColor,
            icon: Icon(FlutterIcons.account_circle_mco),
            label: 'Profiles',
          ),
        ],
      ),
    );
  }
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
              Column(
                children: [
                  Center(
                    child: Container(
                      padding: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.white,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(45),
                          )),
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        backgroundImage: AssetImage("assets/images/holder.png"),
                        radius: 40,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Muhammad Zain",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "USER",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ],
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
          trailing: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WhoAreWe();
                    },
                  ),
                );
              },
              child: Icon(Icons.arrow_forward_ios)),
        ),
        ListTile(
          leading: Icon(
            Entypo.shopping_cart,
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
          trailing: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CardInfo();
                    },
                  ),
                );
              },
              child: Icon(Icons.arrow_forward_ios)),
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

void _startAddNewTransaction(BuildContext ctx) {
  Size size = MediaQuery.of(ctx).size;
  showModalBottomSheet(
    context: ctx,
    backgroundColor: Colors.transparent,
    builder: (_) {
      int dollars = 10;
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
                top: 15,
                left: 15,
                right: 15,
                bottom: 15,
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/avater3.png"),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: RichText(
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
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "Price: \$$dollars",
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Container(
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
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          AutoSizeText(
                            "1",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Container(
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
                                icon: Icon(Icons.remove),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            flex: 6,
                            child: Container(
                              height: 45,
                              padding: EdgeInsets.symmetric(vertical: 4),
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
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
                                child: Center(
                                  child: AutoSizeText(
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

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    title: Text("Popol club"),
    backgroundColor: Colors.transparent,
    actions: [
      IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Finish();
              },
            ),
          );
        },
        icon: Icon(AntDesign.bells),
      ),
      IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return PlaceOrder();
              },
            ),
          );
        },
        icon: Icon(AntDesign.shoppingcart),
      ),
      SizedBox(
        width: 2,
      ),
    ],
  );
}

AppBar buildAppBarblog(BuildContext context) {
  return AppBar(
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
      "Blog",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 26,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(AntDesign.bells),
      ),
      SizedBox(
        width: 2,
      ),
    ],
  );
}
