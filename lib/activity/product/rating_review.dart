import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReviewRating extends StatefulWidget {
  const ReviewRating({super.key});

  @override
  State<ReviewRating> createState() => _reviewState();
}

class _reviewState extends State<ReviewRating> {
  bool withphoto = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Rating and reviews'),
        leading: GestureDetector(
            child: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        )),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Text("8 reviews",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    )),
                Spacer(),
                Transform.scale(
                  scale: 0.8,
                  child: Checkbox(
                    value: withphoto,
                    onChanged: (bool? value) {
                      setState(() {
                        withphoto = value!;
                      });
                    },
                  ),
                ),
                Text("with photo",
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 13)),
              ],
            ),
          ),
          Column(
            children: [
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Container(
                  height: 400,
                  width: 380,
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kim Shine",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),

                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 1),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.orangeAccent,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.orangeAccent,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.orangeAccent,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.orangeAccent,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.orangeAccent,
                                  size: 14,
                                ),
                                Spacer(),
                                Text(
                                  "August 13, 2019",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: (12),
                                      color: Colors.grey),
                                ),
                                //
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 7),
                        child: Text(
                            "I love this dress so much as soon as I tried on I Knew I had to buy it in another color. I am 5'3 about 155lbs and I carry all my weight in my upper body.When i put it on i felt like it thinned me put  and I got so many compliments."),
                      ),
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: SingleChildScrollView(
                              child: Row(
                                children: [
                                  for (int i = 0; i < 5; i++)
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            "img-1.jpg",
                                            width: 80,
                                            height: 80,
                                          ),
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                              scrollDirection: Axis.horizontal,
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Helpful ",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                )),
                            Icon(
                              Icons.thumb_up,
                              size: 20,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),

                      //
                    ],
                  ),
                ),
              )
            ],
          )
        ]),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(5),
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.red,
            ),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.edit,
                    color: Colors.white,
                    size: 14,
                  ),
                  Spacer(),
                  Text(
                    'Write a Review',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
          )
        ],
      ),

      // Children:Text('with photo')
    );
  }
}
