import 'package:e_commerce/activity/bag/my_bag.dart';
import 'package:e_commerce/activity/favorite/favorite_page.dart';
import 'package:e_commerce/activity/home/street_clothes.dart';
import 'package:e_commerce/activity/profile/my_profile.dart';
import 'package:e_commerce/activity/shop/categories.dart';
import 'package:e_commerce/activity/shop/short_dress.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WomensTop extends StatefulWidget {
  const WomensTop({super.key});

  @override
  State<WomensTop> createState() => _womensTopState();
}

class _womensTopState extends State<WomensTop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Tooltip(
          message: 'Back',
          child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Categories()));
              },
              child: const Icon(Icons.chevron_left)),
        ),
        centerTitle: true,
        title: const Text(
          "Women's tops",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        child: const Text(
                          'T-shirts',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        child: const Text(
                          'Crop tops',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        child: const Text(
                          'Blouses',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ShortDress()));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        child: const Text(
                          'Short Dress',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        child: const Text(
                          'Night Dress',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.filter_list_rounded,
                          size: 18,
                        ),
                        Text(
                          'Filters',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          CupertinoIcons.arrow_up_arrow_down,
                          size: 16,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          child: const Text(
                            'Price : lowest to high',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      CupertinoIcons.list_bullet,
                      size: 18,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: 150,
                                height: 200,
                                margin: const EdgeInsets.only(
                                    left: 20, top: 10, bottom: 10),
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage('assets/sail.jpeg'),
                                        fit: BoxFit.fill)),

                                //offer container
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      margin: const EdgeInsets.only(right: 10),
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50))),
                                      child: const Center(
                                        child: Icon(
                                          CupertinoIcons.heart,
                                          size: 14,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                )),

                            //ratings
                            Container(
                              margin: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: Colors.orange.shade300,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: Colors.orange.shade300,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: Colors.orange.shade300,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: Colors.orange.shade300,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: Colors.orange.shade300,
                                    size: 14,
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Text(
                                        '(10)',
                                        style: TextStyle(fontSize: 12),
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 20),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Mango',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                  Text(
                                    'T-shirt SPANISH',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "9",
                                        // style: TextStyle(color: Colors.red),
                                      ),
                                      Icon(
                                        CupertinoIcons.money_dollar,
                                        size: 18,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: 150,
                                height: 200,
                                margin:
                                    const EdgeInsets.only(left: 20, bottom: 10),
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/download 3.jpeg'),
                                        fit: BoxFit.fill)),

                                //offer container
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      margin: const EdgeInsets.only(right: 10),
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50))),
                                      child: const Center(
                                        child: Icon(
                                          CupertinoIcons.heart,
                                          size: 14,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                )),

                            //ratings
                            Container(
                              margin: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: Colors.orange.shade300,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: Colors.orange.shade300,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: Colors.orange.shade300,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: Colors.orange.shade300,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: Colors.orange.shade300,
                                    size: 14,
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Text(
                                        '(10)',
                                        style: TextStyle(fontSize: 12),
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 20),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Mango',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                  Text(
                                    'T-shirt SPANISH',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "9",
                                        // style: TextStyle(color: Colors.red),
                                      ),
                                      Icon(
                                        CupertinoIcons.money_dollar,
                                        size: 18,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: 150,
                                height: 200,
                                margin: const EdgeInsets.only(
                                    left: 20, top: 10, bottom: 10),
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('Assets/download5.jpeg'),
                                        fit: BoxFit.fill)),

                                //offer container
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      margin: const EdgeInsets.only(right: 10),
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50))),
                                      child: const Center(
                                        child: Icon(
                                          CupertinoIcons.heart,
                                          size: 14,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                )),

                            //ratings
                            Container(
                              margin: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: Colors.orange.shade300,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: Colors.orange.shade300,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: Colors.orange.shade300,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: Colors.orange.shade300,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: Colors.orange.shade300,
                                    size: 14,
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Text(
                                        '(10)',
                                        style: TextStyle(fontSize: 12),
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 20),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Mango',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                  Text(
                                    'T-shirt SPANISH',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "9",
                                        // style: TextStyle(color: Colors.red),
                                      ),
                                      Icon(
                                        CupertinoIcons.money_dollar,
                                        size: 18,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: 150,
                                height: 200,
                                margin:
                                    const EdgeInsets.only(left: 20, bottom: 10),
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage('Assets/sail.jpeg'),
                                        fit: BoxFit.fill)),

                                //offer container
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      margin: const EdgeInsets.only(right: 10),
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50))),
                                      child: const Center(
                                        child: Icon(
                                          CupertinoIcons.heart,
                                          size: 14,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                )),

                            //ratings
                            Container(
                              margin: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: Colors.orange.shade300,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: Colors.orange.shade300,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: Colors.orange.shade300,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: Colors.orange.shade300,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star_purple500_outlined,
                                    color: Colors.orange.shade300,
                                    size: 14,
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 5),
                                      child: Text(
                                        '(10)',
                                        style: TextStyle(fontSize: 12),
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 20),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Mango',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                  Text(
                                    'T-shirt SPANISH',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "9",
                                        // style: TextStyle(color: Colors.red),
                                      ),
                                      Icon(
                                        CupertinoIcons.money_dollar,
                                        size: 18,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
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
              child: const Column(
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
            const Column(
              children: [
                Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.red,
                  size: 28,
                ),
                Text(
                  'Shop',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                )
              ],
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
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AccountPage()));
              },
              child: Column(
                children: [
                  Icon(
                    Icons.person_outline,
                    color: Colors.grey,
                    size: 28,
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
