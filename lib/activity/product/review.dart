import 'package:e_commerce/activity/profile/my_profile.dart';
import 'package:flutter/material.dart';

class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        leading: Tooltip(
          message: 'Back',
          child: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => AccountPage()));
              }),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 30),
              width: 400,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Ratings & Reviews',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '4.3',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Text('23 ratings',
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                                Icon(Icons.star,
                                    color: Colors.yellow, size: 15),
                                Icon(Icons.star,
                                    color: Colors.yellow, size: 15),
                                Icon(Icons.star,
                                    color: Colors.yellow, size: 15),
                                Icon(Icons.star,
                                    color: Colors.yellow, size: 15),
                              ],
                            ),
                            Row(
                              children: [
                                Text('    '),
                                Icon(Icons.star,
                                    color: Colors.yellow, size: 15),
                                Icon(Icons.star,
                                    color: Colors.yellow, size: 15),
                                Icon(Icons.star,
                                    color: Colors.yellow, size: 15),
                                Icon(Icons.star,
                                    color: Colors.yellow, size: 15),
                              ],
                            ),
                            Row(
                              children: [
                                Text('        '),
                                Icon(Icons.star,
                                    color: Colors.yellow, size: 15),
                                Icon(Icons.star,
                                    color: Colors.yellow, size: 15),
                                Icon(Icons.star,
                                    color: Colors.yellow, size: 15),
                              ],
                            ),
                            Row(
                              children: [
                                Text('            '),
                                Icon(Icons.star,
                                    color: Colors.yellow, size: 15),
                                Icon(Icons.star,
                                    color: Colors.yellow, size: 15),
                              ],
                            ),
                            Row(
                              children: [
                                Text('                '),
                                Icon(Icons.star,
                                    color: Colors.yellow, size: 15),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                width: 100,
                                height: 8,
                                child: Row(
                                  children: [Text('.')],
                                )),
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                margin: EdgeInsets.only(top: 10),
                                width: 50,
                                height: 8,
                                child: Row(
                                  children: [Text('.')],
                                )),
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                margin: EdgeInsets.only(top: 10),
                                width: 30,
                                height: 8,
                                child: Row(
                                  children: [Text('')],
                                )),
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                margin: EdgeInsets.only(top: 10),
                                width: 15,
                                height: 8,
                                child: Row(
                                  children: [Text('')],
                                )),
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                margin: EdgeInsets.only(top: 10),
                                width: 10,
                                height: 8,
                                child: Row(
                                  children: [Text('')],
                                )),
                          ],
                        ),
                        Column(
                          children: [
                            Text('12'),
                            Text('5'),
                            Text('4'),
                            Text('2'),
                            Text('0'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '8 reviews',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.check_box,
                              color: Colors.black,
                            ),
                            Text('with photos'),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white),
                    width: 300,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Helene Moore',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 14,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 14,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 14,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 14,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 14,
                            ),
                          ],
                        ),
                        Text(
                            'Its a cute dress. Looks beautiful. But the upper layer of cloth that makes up the flowy flare of the dress is thin. Its so delicate that I decided to NOT wash it in machine or with other clothes. Washed it seperately with a little detergent in a bucket and air dried it. Probably not last for more than 10-15 washes, but its worth @ Rs. 465.'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // Image.asset(
                            //   'assets/image1.jpeg',
                            //   width: 80,
                            //   height: 80,
                            // ),
                            // Image.asset(
                            //   'assets/image2.jpeg',
                            //   width: 80,
                            //   height: 80,
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(right: 20, bottom: 20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.red,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 14,
                ),
                Text(
                  'Write a Review',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
