import 'package:e_commerce/activity/auth/login.dart';
import 'package:e_commerce/activity/auth/sign_up.dart';
import 'package:e_commerce/activity/bag/add_address.dart';
import 'package:e_commerce/activity/bag/address.dart';
import 'package:e_commerce/activity/bag/check_out.dart';
import 'package:e_commerce/activity/bag/my_bag.dart';
import 'package:e_commerce/activity/bag/new_card.dart';
import 'package:e_commerce/activity/bag/success_one.dart';
import 'package:e_commerce/activity/bag/success_pic.dart';
import 'package:e_commerce/activity/favorite/favorite_page.dart';
import 'package:e_commerce/activity/home/street_clothes.dart';
import 'package:e_commerce/activity/product/rating_review.dart';
import 'package:e_commerce/activity/product/review.dart';
import 'package:e_commerce/activity/profile/my_orders.dart';
import 'package:e_commerce/activity/profile/my_profile.dart';
import 'package:e_commerce/activity/profile/order_details.dart';
import 'package:e_commerce/activity/profile/settings.dart';
import 'package:e_commerce/activity/shop/categories.dart';
import 'package:e_commerce/activity/shop/short_dress.dart';
import 'package:e_commerce/activity/shop/womens_top.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: StreetCloths(),
    debugShowCheckedModeBanner: false,
  ));
}
