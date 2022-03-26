import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'app/appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Product_list extends StatefulWidget {
  const Product_list({Key? key}) : super(key: key);

  @override
  State<Product_list> createState() => _Product_listState();
}

class _Product_listState extends State<Product_list> {
  @override
  Widget build(BuildContext context) {
    final items = [
      ["images/1.png", "sneakers", '12000'],
      ["images/2.png", "sn", '15000'],
      ["images/3.png", "sn", '20000'],
      ["images/4.png", "fggfghg", '45000'],
      ["images/5.png", "hcscvvvchzx", '70000'],
      ["images/6.png", "dchvhcshxvhcx", '65000'],
    ];
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(4, 72, 97, 100),
        title: Center(
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
              children: [
                TextSpan(
                  text: 'PRODUCT\n',
                  style: TextStyle(fontSize: 15),
                ),
                TextSpan(
                  text: '  In Dar',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
        actions: [
          Badge(
              badgeContent: Text('3'),
              position: BadgePosition.topEnd(top: 1, end: 3),

              // animationType: BadgeAnimationType.fade,
              child: IconButton(
                icon: Icon(Icons.shopping_cart_outlined),
                tooltip: 'cart',
                onPressed: () {},
              ))
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          tooltip: 'back',
          onPressed: () {},
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: (1),
        crossAxisSpacing: 15,
        mainAxisSpacing: 12,
        // scrollDirection: Axis.horizontal,
        //physics:BouncingScrollPhysics(),
        // padding: EdgeInsets.all(10.0),
        children: [
          ...items.map(
            (i) => Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 0.3),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      color: Colors.white,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 10.1,
                      spreadRadius: 2.0),
                ],
                image: DecorationImage(
                  image: AssetImage(i[0]),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 170,
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      i[1] + '\n' + i[2],
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(4, 72, 97, 100),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.home,
                  size: 20, color: Colors.white),
              onPressed: () {},
            ),
            // IconButton(
            //   icon: Icon(
            //     icon:FaIcon(FontAwesomeIcons.cartShopping),
            //     //Icons.shopping_cart_rounded,
            //     color: Colors.white,
            //   ),
            //   onPressed: () {},
            // ),
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.cartShopping,
                  size: 20, color: Colors.white),
              onPressed: () {},
            ),

            IconButton(
              icon: const FaIcon(FontAwesomeIcons.listCheck,
                  size: 20, color: Colors.white),
              onPressed: () {},
            ),

            IconButton(
              icon: const FaIcon(FontAwesomeIcons.user,
                  size: 20, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
