import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignupState();
}

class _SignupState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            color: Colors.grey.shade100,
            width: 400,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back_ios),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Sign up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: 350,
                  height: 50,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Name",
                        suffixIcon: Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        border: InputBorder.none),
                  ),
                ),
                Container(
                  width: 350,
                  height: 50,
                  margin: EdgeInsets.only(top: 10),
                  color: Colors.white,
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Email", border: InputBorder.none),
                  ),
                ),
                Container(
                  width: 350,
                  height: 50,
                  margin: EdgeInsets.only(top: 10),
                  color: Colors.white,
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.grey),
                        labelText: "Password",
                        border: InputBorder.none),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Already have an account?"),
                      Icon(
                        Icons.arrow_forward_rounded,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 320,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'SIGN UP',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(25),
                    child: Text("Or Sign up with social account")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/google.jpeg",
                      width: 50,
                    ),
                    Image.asset(
                      "assets/fb.png",
                      width: 60,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
