import 'package:e_commerce/activity/profile/my_profile.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool Salesvalue = true;
  bool NewArrivalvalue = false;
  bool Deliveryvalue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        centerTitle: true,
        actions: [
          Container(
              padding: const EdgeInsets.only(right: 20),
              child: const Icon(Icons.search))
        ],
        leading: Tooltip(
          message: 'Back',
          child: GestureDetector(
              onTap: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => AccountPage()));
              },
              child: Icon(Icons.chevron_left)),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          // color: Colors.grey.shade100,
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Settings',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Personal Information',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Full Name',
                  labelText: 'Full Name',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(8),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Date of birth',
                  labelText: 'Date of birth',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(8),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Password',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Change',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Password',
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(8),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Notifications',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Sales'),
                  Switch(
                    activeColor: Colors.green,
                    activeTrackColor: Colors.white38,
                    inactiveThumbColor: Colors.grey.shade400,
                    inactiveTrackColor: Colors.grey.shade300,
                    splashRadius: 20.0,
                    value: Salesvalue,
                    onChanged: (bool value) {
                      setState(() {
                        if (Salesvalue == false) {
                          Salesvalue = true;
                        } else {
                          Salesvalue = false;
                        }
                        print(Salesvalue);
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('NewArrivals'),
                  Switch(
                    activeColor: Colors.green,
                    activeTrackColor: Colors.white38,
                    inactiveThumbColor: Colors.grey.shade400,
                    inactiveTrackColor: Colors.grey.shade300,
                    splashRadius: 20.0,
                    value: NewArrivalvalue,
                    onChanged: (bool value) {
                      setState(() {
                        if (NewArrivalvalue == false) {
                          NewArrivalvalue = true;
                        } else {
                          NewArrivalvalue = false;
                        }
                        print(NewArrivalvalue);
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Delivery status changes'),
                  Switch(
                    activeColor: Colors.green,
                    activeTrackColor: Colors.white38,
                    inactiveThumbColor: Colors.grey.shade400,
                    inactiveTrackColor: Colors.grey.shade300,
                    splashRadius: 20.0,
                    value: Deliveryvalue,
                    onChanged: (bool value) {
                      setState(() {
                        if (Deliveryvalue == false) {
                          Deliveryvalue = true;
                        } else {
                          Deliveryvalue = false;
                        }
                        print(Deliveryvalue);
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 10),
        height: 60,
        color: Colors.grey.shade200,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.home_outlined),
                Text(
                  'Home',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            Column(
              children: [
                Icon(Icons.add_shopping_cart),
                Text(
                  'Cart',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            Column(
              children: [
                Icon(Icons.shopping_bag_outlined),
                Text(
                  'Bag',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            Column(
              children: [
                Icon(Icons.favorite_border),
                Text(
                  'Favourite',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.person_outline,
                  color: Colors.red,
                ),
                Text(
                  'Profile',
                  style: TextStyle(fontSize: 12, color: Colors.red),
                ),
              ],
            )
          ],
        ),
      ),
      // Text('personal information',TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
