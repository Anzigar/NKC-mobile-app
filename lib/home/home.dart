import 'package:flutter/material.dart';
import 'package:nkc/home/home.dart';
import 'package:nkc/registration/register.dart';
import 'package:nkc/registration/login.dart';

import '../app/appbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Appbar(),
    );
  }
}
