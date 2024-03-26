import 'package:e_commerce/activity/profile/my_orders.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
    OrderDetails({super.key,   required this.id});
final String id;
  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print("id : ${widget.id}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        leading: Tooltip(
          message: 'Back',
          child: GestureDetector(
              onTap: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => MyOrders()));
              },
              child: const Icon(Icons.chevron_left)),
        ),
        centerTitle: true,
        title: const Text(
          'Order Details',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(bottom: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Order No . 1947034',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '05-12-2019',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Tracking number : ',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          'IW3475453455',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Text(
                      'Delivered',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '3 items',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          Container(
                              height: 100,
                              width: 100,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("assets/img.png")),
                              ),
                              child: const Image(
                                  image: AssetImage('assets/img.png'))),
                          Container(
                            margin: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Pullover',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                const Text(
                                  'Mango',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const Row(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Color :',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Text(' Gray'),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Size:',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Text('L'),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 280,
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Units:',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          Text('1'),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text('51'),
                                          Icon(CupertinoIcons.money_dollar),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          Container(
                              height: 100,
                              width: 100,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("assets/img.png")),
                              ),
                              child: const Image(
                                  image: AssetImage('assets/img.png'))),
                          Container(
                            margin: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Pullover',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                const Text(
                                  'Mango',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const Row(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Color :',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Text(' Gray'),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Size:',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Text('L'),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 280,
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Units:',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          Text('1'),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text('51'),
                                          Icon(CupertinoIcons.money_dollar),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          Container(
                              height: 100,
                              width: 100,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage("assets/img.png")),
                              ),
                              child:
                                  Image(image: AssetImage('assets/img.png'))),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Pullover',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                const Text(
                                  'Mango',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const Row(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Color :',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Text(' Gray'),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Size:',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Text('L'),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  width: 280,
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Units:',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          Text('1'),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text('51'),
                                          Icon(CupertinoIcons.money_dollar),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: const Text(
                    'Order information',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 400,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  'Shipping Address :',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 250,
                                  child: const Text(
                                    '3 New bridge Court ,Chino Hills,CA 91709, United States',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 400,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  'payment method :',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 30,
                                  height: 30,
                                  padding: EdgeInsets.only(right: 20),
                                  child: const Row(
                                    children: [
                                      Image(
                                          image: AssetImage(
                                              'assets/mastercard.png'))
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 200,
                                      child: const Text(
                                        '**** **** **** 3947',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 400,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  'Delivery method :',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Container(
                              width: 250,
                              child: const Row(
                                children: [
                                  Text(
                                    'FedEx, 3 days, 15',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Icon(CupertinoIcons.money_dollar),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 400,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  'Discount:',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Container(
                              width: 250,
                              child: const Row(
                                children: [
                                  Text(
                                    '10%, Personal Promo code',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 400,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  'Total Amount:',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Container(
                              width: 250,
                              child: const Row(
                                children: [
                                  Text(
                                    '133',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Icon(CupertinoIcons.money_dollar),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 150,
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'Reorder',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            )),
                      ),
                      Container(
                        width: 150,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red),
                          child: const Text(
                            'Leave feedback',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
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
