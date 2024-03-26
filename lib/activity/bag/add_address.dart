import 'package:e_commerce/activity/bag/address.dart';
import 'package:flutter/material.dart';

class AddAddress extends StatefulWidget {
  const AddAddress({super.key});

  @override
  State<AddAddress> createState() => _add_addressState();
}

class _add_addressState extends State<AddAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: AppBar(
        leading: Tooltip(
          message: 'Back',
          child: GestureDetector(
              onTap: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => Address()));
              },
              child: Icon(Icons.chevron_left)),
        ),
        centerTitle: true,
        title: Text("Adding Shipping Address"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            color: Colors.white,
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  // contentPadding: EdgeInsets.all(20),
                  // hintText: "Full Name"
                  labelText: "Full Name"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            color: Colors.white,
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                // contentPadding: EdgeInsets.all(20),
                // hintText: "Address",
                labelText: "Address",
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            color: Colors.white,
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  // contentPadding: EdgeInsets.all(20),
                  // hintText: "City"
                  labelText: "City"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            color: Colors.white,
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  // contentPadding: EdgeInsets.all(20),
                  // hintText: "State/Region"
                  labelText: "State/Region"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            color: Colors.white,
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  // contentPadding: EdgeInsets.all(20),
                  // hintText: "Zip Code"
                  labelText: "Zip Code"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            color: Colors.white,
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  // contentPadding: EdgeInsets.all(20),
                  // hintText: "Country"
                  labelText: "Country"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            width: 400,
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
              ),
              onPressed: () {},
              child: Text('Save Address'),
            ),
          )
        ],
      ),
    );
  }
}
