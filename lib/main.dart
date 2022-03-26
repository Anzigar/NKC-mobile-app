import 'package:flutter/material.dart';
import 'package:nkc/home/home.dart';
import 'registration/login.dart';
import 'registration/register.dart';
import 'package:nkc/product_list.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (context) => MyLogin(),
        'registration': (context) => Registration(),
        'product_list': (context) => Product_list()
      }));
}
