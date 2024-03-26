import 'package:e_commerce/activity/home/street_clothes.dart';
import 'package:flutter/material.dart';

class SuccessOne extends StatefulWidget {
  const SuccessOne({super.key});

  @override
  State<SuccessOne> createState() => _SuccessOneState();
}

class _SuccessOneState extends State<SuccessOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //image
            Container(
                width: 350,
                height: 350,
                child: Image.asset('assets/success_bag.png')),
            Text(
              "Success!",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            Text("Your order will be delivered soon"),
            Text("Thankyou for choosing our app"),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          width: 350,
          height: 40,
          margin: EdgeInsets.all(30),
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StreetCloths()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade500,
                  foregroundColor: Colors.white),
              child: Text('CONTINUE SHOPPING'))),
    );
  }
}
