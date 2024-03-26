import 'package:flutter/material.dart';

class SuccessPic extends StatefulWidget {
  const SuccessPic({super.key});

  @override
  State<SuccessPic> createState() => _SuccessPicState();
}

class _SuccessPicState extends State<SuccessPic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade300,
      body: Center(
        child: Container(
          // width: 425,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/success_pic.jpg'), fit: BoxFit.fill),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Success!",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 35,
                    color: Colors.white),
              ),
              Text(
                "Your Order will be delivered soon",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "Thank you for Choosing our app",
                style: TextStyle(color: Colors.white),
              ),
              Container(
                padding: EdgeInsets.only(top: 25),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white),
                    child: Text('Continue Shopping')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
