import 'package:flutter/material.dart';
import 'package:nkc/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Appbar extends StatefulWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      // body: Container(),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(225, 24, 19, 88),
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


// class FloatAppBar  extends StatelessWidget with PreferredSizeWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Stack(
//      children: [
//        Positioned(
//          top: 10,
//          right: 15,
//          left: 15,
//          child: Container(
//            color:Colors.white,
//            child:Row(
//              children:[
//                Material(
//                  type: MaterialType.transparency,
//                  child:IconButton(
//                    splashColor: Colors.grey,
//                    icon:const Icon(Icons.menu_rounded),
//                    onPressed: () {},
//                  )
//                )
//                 Expanded(
//                  child:TextField(
//                    cursorColor:Colors.black,
//                    keyboardType:TextInputType.text,
//                    textInputAction: TextInputAction.go,
//                    decoration: const InputDecoration(
//                      border:InputBorder.none,
//                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
//                      hintText:"Search..."
//                    ),
//                  ) ,)
//              ],
//            ),
//          ),
//        ),
//      ],
//    ),
//  }
//  @override
//  Size get preferredSize=>
//    const Size.fromHeight(kToolbarHeight);
//  }

