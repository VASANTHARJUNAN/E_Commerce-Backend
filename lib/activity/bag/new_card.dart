import 'package:flutter/material.dart';

class NewCard extends StatefulWidget {
  const NewCard({super.key});

  @override
  State<NewCard> createState() => _new_cardState();
}

class _new_cardState extends State<NewCard> {
  bool kk = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      appBar: AppBar(
        centerTitle: true,
        title: Text("New Card"),
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
                  // hintText: "Name on Card"
                  labelText: "Name on Card"),
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
                  // hintText: "Card Number"
                  labelText: "Card Number"),
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
                  // hintText: "Expiry Date"
                  labelText: "Expiry Date"),
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
                  // hintText: "CVV"
                  labelText: "CVV"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Checkbox(
                    checkColor: Colors.white,
                    // fillColor: MaterialStateProperty.all(Colors.black),
                    value: kk,
                    onChanged: (bool? value) {
                      setState(() {
                        kk = value!;
                      });
                    }),
                Text("Set as Default Payment")
              ],
            ),
          ),
          Container(
            width: 400,
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
              ),
              onPressed: () {},
              child: Text('ADD CARD'),
            ),
          )
        ],
      ),
    );
  }
}
