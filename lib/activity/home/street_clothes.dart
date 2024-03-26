import 'package:e_commerce/activity/bag/my_bag.dart';
import 'package:e_commerce/activity/favorite/favorite_page.dart';
import 'package:e_commerce/activity/profile/my_profile.dart';
import 'package:e_commerce/activity/shop/categories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StreetCloths extends StatefulWidget {
  const StreetCloths({super.key});

  @override
  State<StreetCloths> createState() => _StreetClothsState();
}

class _StreetClothsState extends State<StreetCloths> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //baner
            Container(
              width: 425,
              height: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/StreetCloth.jpg'),
                      fit: BoxFit.fill)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(20),
                        child: const Text(
                          "Street Cloths",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w900),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //sale line
            Container(
              margin: const EdgeInsets.only(
                  top: 30, right: 20, left: 20, bottom: 10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sale',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 25),
                      ),
                      Text('Super summer sale'),
                    ],
                  ),
                  Text(
                    'view all',
                  )
                ],
              ),
            ),

            //pic with price
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 150,
                          height: 200,
                          margin: const EdgeInsets.only(left: 20, bottom: 10),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/sale_pic1.webp'),
                                  fit: BoxFit.fill)),

                          //offer container
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: 25,
                                margin: const EdgeInsets.all(10),
                                // color: Colors.red,
                                decoration: const BoxDecoration(
                                    color: Colors.red,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: const Center(
                                  child: Text(
                                    '-20%',
                                    style: TextStyle(color: Colors.white),
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
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(Icons.star_purple500_outlined,
                                color: Colors.yellow.shade300, size: 14),
                            Icon(Icons.star_purple500_outlined,
                                color: Colors.yellow.shade300, size: 14),
                            Icon(Icons.star_purple500_outlined,
                                color: Colors.yellow.shade300, size: 14),
                            Icon(Icons.star_purple500_outlined,
                                color: Colors.yellow.shade300, size: 14),
                            const Text(
                              '(10)',
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Dorothy perkins',
                                style: TextStyle(color: Colors.grey)),
                            Text(
                              'Evening Dress',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Rs.1200/-",
                              style: TextStyle(color: Colors.red),
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
                          margin: const EdgeInsets.only(left: 20, bottom: 10),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/sale_pic5.webp'),
                                  fit: BoxFit.fill)),

                          //offer container
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: 25,
                                margin: const EdgeInsets.all(10),
                                // color: Colors.red,
                                decoration: const BoxDecoration(
                                    color: Colors.red,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: const Center(
                                  child: Text(
                                    '-15%',
                                    style: TextStyle(color: Colors.white),
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
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            const Text(
                              '(10)',
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Dorothy perkins',
                                style: TextStyle(color: Colors.grey)),
                            Text(
                              'Evening Dress',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Rs.1200/-",
                              style: TextStyle(color: Colors.red),
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
                          margin: const EdgeInsets.only(left: 20, bottom: 10),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/sale_pic3.webp'),
                                  fit: BoxFit.fill)),

                          //offer container
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: 25,
                                margin: const EdgeInsets.all(10),
                                // color: Colors.red,
                                decoration: const BoxDecoration(
                                    color: Colors.red,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: const Center(
                                  child: Text(
                                    '-20%',
                                    style: TextStyle(color: Colors.white),
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
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            const Text(
                              '(10)',
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dorothy perkins',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'Evening Dress',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Rs.1200/-",
                              style: TextStyle(color: Colors.red),
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
                          margin: const EdgeInsets.only(left: 20, bottom: 10),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/sale_pic4.webp'),
                                  fit: BoxFit.fill)),

                          //offer container
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: 25,
                                margin: const EdgeInsets.all(10),
                                // color: Colors.red,
                                decoration: const BoxDecoration(
                                    color: Colors.red,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: const Center(
                                  child: Text(
                                    '-15%',
                                    style: TextStyle(color: Colors.white),
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
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            const Text(
                              '(10)',
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dorothy perkins',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'Evening Dress',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Rs.1200/-",
                              style: TextStyle(color: Colors.red),
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
                          margin: const EdgeInsets.only(left: 20, bottom: 10),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/sale_pic5.webp'),
                                  fit: BoxFit.fill)),

                          //offer container
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: 25,
                                margin: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    color: Colors.red,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: const Center(
                                  child: Text(
                                    '-20%',
                                    style: TextStyle(color: Colors.white),
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
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            // color: Colors.red,
                            const Text('(10)', style: TextStyle(fontSize: 10))
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dorothy perkins',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'Evening Dress',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Rs.1200/-",
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //New line
            Container(
              margin: const EdgeInsets.only(
                  top: 30, right: 20, left: 20, bottom: 10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'New',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 25),
                      ),
                      Text('You have never seen it before!'),
                    ],
                  ),
                  Text('view all')
                ],
              ),
            ),

            //new line with pic
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 150,
                          height: 200,
                          margin: const EdgeInsets.only(left: 20, bottom: 10),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/sale_pic1.webp'),
                                  fit: BoxFit.fill)),

                          //offer container
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: 25,
                                margin: const EdgeInsets.all(10),
                                // color: Colors.red,
                                decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: const Center(
                                  child: Text(
                                    'NEW',
                                    style: TextStyle(color: Colors.white),
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
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            const Text(
                              '(10)',
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dorothy perkins',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'Evening Dress',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Rs.1200/-",
                              style: TextStyle(color: Colors.red),
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
                          margin: const EdgeInsets.only(left: 20, bottom: 10),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/sale_pic5.webp'),
                                  fit: BoxFit.fill)),

                          //offer container
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: 25,
                                margin: const EdgeInsets.all(10),
                                // color: Colors.red,
                                decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: const Center(
                                  child: Text(
                                    'NEW',
                                    style: TextStyle(color: Colors.white),
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
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            const Text(
                              '(10)',
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dorothy perkins',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'Evening Dress',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Rs.1200/-",
                              style: TextStyle(color: Colors.red),
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
                          margin: const EdgeInsets.only(left: 20, bottom: 10),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/sale_pic3.webp'),
                                  fit: BoxFit.fill)),

                          //offer container
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: 25,
                                margin: const EdgeInsets.all(10),
                                // color: Colors.red,
                                decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: const Center(
                                  child: Text(
                                    'NEW',
                                    style: TextStyle(color: Colors.white),
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
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            const Text(
                              '(10)',
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dorothy perkins',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'Evening Dress',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Rs.1200/-",
                              style: TextStyle(color: Colors.red),
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
                          margin: const EdgeInsets.only(left: 20, bottom: 10),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/sale_pic4.webp'),
                                  fit: BoxFit.fill)),

                          //offer container
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: 25,
                                margin: const EdgeInsets.all(10),
                                // color: Colors.red,
                                decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: const Center(
                                  child: Text(
                                    'NEW',
                                    style: TextStyle(color: Colors.white),
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
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            const Text(
                              '(10)',
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dorothy perkins',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'Evening Dress',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Rs.1200/-",
                              style: TextStyle(color: Colors.red),
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
                          margin: const EdgeInsets.only(left: 20, bottom: 10),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/sale_pic5.webp'),
                                  fit: BoxFit.fill)),

                          //offer container
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: 25,
                                margin: const EdgeInsets.all(10),
                                // color: Colors.red,
                                decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: const Center(
                                  child: Text(
                                    'NEW',
                                    style: TextStyle(color: Colors.white),
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
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow.shade300,
                              size: 14,
                            ),
                            const Text(
                              '(10)',
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dorothy perkins',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              'Evening Dress',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Rs.1200/-",
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
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
            Column(
              children: [
                Icon(
                  Icons.home_outlined,
                  color: Colors.red,
                  size: 28,
                ),
                Text(
                  'Home',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                )
              ],
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
