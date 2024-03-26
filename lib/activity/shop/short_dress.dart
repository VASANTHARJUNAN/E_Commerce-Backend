import 'package:e_commerce/activity/shop/womens_top.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class ShortDress extends StatefulWidget {
  const ShortDress({super.key});

  @override
  State<ShortDress> createState() => _Screen19State();
}

class _Screen19State extends State<ShortDress> {
  @override
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  String? selectedValue;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Short Dress"),
        centerTitle: true,
        leading: Tooltip(
          message: 'Back',
          child: GestureDetector(
              onTap: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => WomensTop()));
              },
              child: Icon(Icons.arrow_back_ios)),
        ),
        actions: [Icon(Icons.share)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Image.asset(
                    "fashion.jpeg",
                    fit: BoxFit.fill,
                  ),
                  Image.asset("fashion3.jpeg", fit: BoxFit.fill),
                ],
              ),
            ),
            Row(
              children: [
                DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(
                    isExpanded: true,
                    hint: Text(
                      'Select Item',
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).hintColor,
                      ),
                    ),
                    items: items
                        .map((String item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (String? value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },
                    buttonStyleData: const ButtonStyleData(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      height: 40,
                      width: 140,
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 40,
                    ),
                  ),
                ),
                DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(
                    isExpanded: true,
                    hint: Text(
                      'Select Item',
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).hintColor,
                      ),
                    ),
                    items: items
                        .map((String item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (String? value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },
                    buttonStyleData: const ButtonStyleData(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      height: 40,
                      width: 140,
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 40,
                    ),
                  ),
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                )
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "H&M",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.attach_money,
                          size: 20,
                        ),
                        Text(
                          '19.99',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Short Black dress",
                      style: TextStyle(
                          fontWeight: FontWeight.w100, color: Colors.grey),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.limeAccent,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.limeAccent,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.limeAccent,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.limeAccent,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.limeAccent,
                    ),
                    Text("(10)")
                  ],
                ),
                Container(
                  child: Text(
                    "Short dress in cotton jersey with decorative  button down the front and wide ,frill trimmed",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Shipping info'),
                Icon(Icons.arrow_forward_ios_sharp),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Support'),
                Icon(Icons.arrow_forward_ios_sharp),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("YOU CAN ALSO LIKE THIS"),
                Text(
                  "12 ITEMS",
                  style: TextStyle(color: Colors.grey),
                )
              ],
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
                          margin: EdgeInsets.only(left: 20, bottom: 10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/sail.jpeg'),
                                  fit: BoxFit.fill)),

                          //offer container
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: 25,
                                margin: EdgeInsets.all(10),
                                // color: Colors.red,
                                decoration: const BoxDecoration(
                                    color: Colors.red,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: Center(
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
                        margin: EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow,
                            ),
                            Text('(10)')
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Dorothy perkins'),
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
                          margin: EdgeInsets.only(left: 20, bottom: 10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/evedress.jpeg'),
                                  fit: BoxFit.fill)),

                          //offer container
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: 25,
                                margin: EdgeInsets.all(10),
                                // color: Colors.red,
                                decoration: const BoxDecoration(
                                    color: Colors.red,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: Center(
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
                        margin: EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow,
                            ),
                            Text('(10)')
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Dorothy perkins'),
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
                          margin: EdgeInsets.only(left: 20, bottom: 10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/sail.jpeg'),
                                  fit: BoxFit.fill)),

                          //offer container
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: 25,
                                margin: EdgeInsets.all(10),
                                // color: Colors.red,
                                decoration: const BoxDecoration(
                                    color: Colors.red,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: Center(
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
                        margin: EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow,
                            ),
                            Text('(10)')
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Dorothy perkins'),
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
                          margin: EdgeInsets.only(left: 20, bottom: 10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/evedress.jpeg'),
                                  fit: BoxFit.fill)),

                          //offer container
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: 25,
                                margin: EdgeInsets.all(10),
                                // color: Colors.red,
                                decoration: const BoxDecoration(
                                    color: Colors.red,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: Center(
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
                        margin: EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow,
                            ),
                            Text('(10)')
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Dorothy perkins'),
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
                          margin: EdgeInsets.only(left: 20, bottom: 10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/sail.jpeg'),
                                  fit: BoxFit.fill)),

                          //offer container
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: 25,
                                margin: EdgeInsets.all(10),
                                // color: Colors.red,
                                decoration: const BoxDecoration(
                                    color: Colors.red,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                child: Center(
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
                        margin: EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.yellow,
                            ),
                            Text('(10)')
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Dorothy perkins'),
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
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.only(top: 15, bottom: 15),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                      minimumSize: MaterialStateProperty.all(Size(450, 0))),
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => Login()));
                  },
                  child: Text(
                    "ADD TO CART",
                    style: TextStyle(color: Colors.white),
                  ))),
        ],
      ),
    );
  }
}
