import 'package:e_commerce/activity/bag/add_address.dart';
import 'package:e_commerce/activity/bag/check_out.dart';
import 'package:e_commerce/activity/profile/my_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _addressState();
}

class _addressState extends State<Address> {
  bool kk = false;
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
                    MaterialPageRoute(builder: (context) => AccountPage()));
              },
              child: Icon(Icons.chevron_left)),
        ),
        centerTitle: true,
        title: Text(
          'Shipping address',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CheckOut()));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                margin: EdgeInsets.all(20),
                surfaceTintColor: Colors.white,
                color: Colors.white,
                child: Container(
                  // padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('John Doe'),
                            Text('Edit',
                                style: TextStyle(color: Colors.red.shade900))
                          ],
                        ),
                      ),
                      Text("3 New Bridge Court"),
                      Text("Chino hills CA-91709 United states"),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Container(
                              child: Checkbox(
                                  value: kk,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      kk = value!;
                                    });
                                  }),
                            ),
                            Text("Use this as shipping Address")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              margin: EdgeInsets.all(20),
              surfaceTintColor: Colors.white,
              color: Colors.white,
              child: Container(
                // padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('John Doe'),
                          Text('Edit',
                              style: TextStyle(color: Colors.red.shade900))
                        ],
                      ),
                    ),
                    Text("3 New Bridge Court"),
                    Text("Chino hills CA-91709 United states"),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Container(
                            child: Checkbox(
                                value: kk,
                                onChanged: (bool? value) {
                                  setState(() {
                                    kk = value!;
                                  });
                                }),
                          ),
                          Text("Use this as shipping Address")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              margin: EdgeInsets.all(20),
              surfaceTintColor: Colors.white,
              color: Colors.white,
              child: Container(
                // padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('John Doe'),
                          Text('Edit',
                              style: TextStyle(color: Colors.red.shade900))
                        ],
                      ),
                    ),
                    Text("3 New Bridge Court"),
                    Text("Chino hills CA-91709 United states"),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Container(
                            child: Checkbox(
                                value: kk,
                                onChanged: (bool? value) {
                                  setState(() {
                                    kk = value!;
                                  });
                                }),
                          ),
                          Text("Use this as shipping Address")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddAddress()));
                  },
                  child: Icon(
                    Icons.add_circle_outlined,
                    size: 40,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
