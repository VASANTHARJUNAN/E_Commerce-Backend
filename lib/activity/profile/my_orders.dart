import 'dart:convert';

import 'package:e_commerce/activity/profile/my_profile.dart';
import 'package:e_commerce/activity/profile/order_details.dart';
import 'package:flutter/material.dart';

import "package:http/http.dart" as http;

class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  List orders = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("My Orders initiated");
    getOrder();
  }

  getOrder() async {
    var response =
        await http.get(Uri.parse("http://localhost:5000/users/order"));


  print("body : ${response.body}");

  orders=jsonDecode(response.body);
  print("orders length : ${orders.length}");
  setState(() {

  });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        actions: [Icon(Icons.search)],
        leading: Tooltip(
          message: "Back",
          child: GestureDetector(
              onTap: () {
                Navigator.pop(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AccountPage()));
              },
              child: Icon(Icons.chevron_left)),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 12, right: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // padding: EdgeInsets.only(left: 12),
                child: const Text(
                  'My Orders',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                // padding: EdgeInsets.only(left: 12, right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        child: const Text(
                          'Delivered',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Text('Processing'),
                    Text('Cancelled'),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              for (int i = 0; i < orders.length; i++)
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 400,
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Order No : $i',
                                        // 'Order No 1947034',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        orders[i]['createdAt'],
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                                Row(
                                children: [
                                  Text(
                                    'Tracking number : ',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    orders[i]['Trackingno'],
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Quality : ',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        '3',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Total Amount : ',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      Text(
                                        '112',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Icon(Icons.money_off),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        OrderDetails(id:orders[i]['_id'])));
                                          },
                                          style: ElevatedButton.styleFrom(),
                                          child: const Text(
                                            'Details',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Text(
                                    'Delivered',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 10),
        height: 60,
        color: Colors.grey.shade200,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.home_outlined),
                Text(
                  'Home',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            Column(
              children: [
                Icon(Icons.add_shopping_cart),
                Text(
                  'Cart',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            Column(
              children: [
                Icon(Icons.shopping_bag_outlined),
                Text(
                  'Bag',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            Column(
              children: [
                Icon(Icons.favorite_border),
                Text(
                  'Favourite',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.person_outline,
                  color: Colors.red,
                ),
                Text(
                  'Profile',
                  style: TextStyle(fontSize: 12, color: Colors.red),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
