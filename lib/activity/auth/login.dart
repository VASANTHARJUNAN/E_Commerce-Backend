import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  get firstName => null;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Container(
            width: 400,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back_ios),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 50, bottom: 50),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )),
                  ],
                ),
                Container(
                  width: 400,
                  child: Column(
                    children: [
                      // Icon(Icons.person_pin_circle),
                      Container(
                          width: 380,
                          height: 50,
                          margin: EdgeInsets.only(bottom: 30),
                          child: TextFormField(
                            controller: firstName,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Email',
                                hintText: 'Enter your Email',
                                suffix: Container(
                                    margin: EdgeInsets.only(right: 10, top: 6),
                                    child: Icon(Icons.check))),
                          )),
                      Container(
                          width: 380,
                          height: 50,
                          child: TextFormField(
                            controller: firstName,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                                hintText: 'Enter your Password'),
                          )),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Forgot your password ?'),
                            Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Icon(Icons.arrow_forward))
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.deepOrange[900]),
                                minimumSize:
                                    MaterialStateProperty.all(Size(500, 50))
                                //elevation: MaterialStateProperty.all(30),
                                // shape: MaterialStateProperty.all(BeveledRectangleBorder(
                                //     borderRadius: BorderRadius.zero))
                                ),
                            onPressed: () {
                              print('success');
                            },
                            child: Text(
                              'Login',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 100),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Or login with social account'),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/google.jpeg', width: 50),
                            Image.asset(
                              'assets/fb.png',
                              width: 60,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
