import 'package:e_commerce/activity/bag/address.dart';
import 'package:e_commerce/activity/bag/my_bag.dart';
import 'package:e_commerce/activity/favorite/favorite_page.dart';
import 'package:e_commerce/activity/home/street_clothes.dart';
import 'package:e_commerce/activity/product/rating_review.dart';
import 'package:e_commerce/activity/product/review.dart';
import 'package:e_commerce/activity/profile/my_orders.dart';
import 'package:e_commerce/activity/profile/settings.dart';
import 'package:e_commerce/activity/shop/categories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountState();
}

class _AccountState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 20, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Icon(Icons.search_rounded)],
              ),
            ),

            //title
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "My Profile",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),

            //photo line
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      image: DecorationImage(
                          image: AssetImage('assets/profile.JPG'),
                          fit: BoxFit.fill)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "VASANTH ARJUNAN",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                      Text("vasantharjunan21@gmail.com"),
                    ],
                  ),
                ),
              ],
            ),

            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "My Orders",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600),
                          ),
                          Text("Already have 12 orders"),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyOrders()));
                        },
                        child: Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Icon(Icons.arrow_forward_ios)),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Shipping Address",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600),
                          ),
                          Text("3 Addresses"),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Address()));
                        },
                        child: Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Icon(Icons.arrow_forward_ios)),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Payment Methods",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600),
                          ),
                          Text("visa  **45"),
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Promococdes",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600),
                          ),
                          Text("You have special promocodes"),
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "My Reviews",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600),
                          ),
                          Text("Reviews for 4 times"),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Review()));
                        },
                        child: Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Icon(Icons.arrow_forward_ios)),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 30, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Settings",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600),
                          ),
                          Text("Notifications, passwords"),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Settings()));
                        },
                        child: Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Icon(Icons.arrow_forward_ios)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        //margin: EdgeInsets.all(10),
        height: 50,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StreetCloths()));
              },
              child: Column(
                children: [
                  Icon(
                    Icons.home_outlined,
                    color: Colors.grey,
                    size: 28,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Categories()));
              },
              child: Column(
                children: [
                  Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.grey,
                    size: 28,
                  ),
                  Text(
                    'Shop',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyBag()));
              },
              child: Column(
                children: [
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.grey,
                    size: 28,
                  ),
                  Text(
                    'Bag',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Favourites()));
              },
              child: Column(
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.grey,
                    size: 28,
                  ),
                  Text(
                    'Favorites',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  )
                ],
              ),
            ),
            const Column(
              children: [
                Icon(
                  Icons.person_outline,
                  color: Colors.red,
                  size: 28,
                ),
                Text(
                  'Profile',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
