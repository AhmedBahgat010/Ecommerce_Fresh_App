
import 'package:ecommerce_fresh_app/Screens/cart/cart_screen.dart';
import 'package:flutter/material.dart';

import '../../Constant/My_colors/colors.dart';

class CartAppBar extends StatefulWidget {
  const CartAppBar({Key? key}) : super(key: key);

  @override
  _CartAppBarState createState() => _CartAppBarState();
}

class _CartAppBarState extends State<CartAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 40,
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Fresh',
              style: TextStyle(
                  color: black, fontSize: 28, fontWeight: FontWeight.w700),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CartScreen()));
              },
              child: const Icon(
                Icons.shopping_cart_outlined,
                color: black,
                size: 30,
              ),
            )
            // IconButton(
            //     onPressed: () {
            //       Navigator.push(context,
            //           MaterialPageRoute(builder: (context) =>
            //           const CartScreen()));
            //     },
            //     icon: const Icon(
            //       Icons.shopping_cart_outlined,
            //       color: black,
            //       size: 30,
            //     ))
          ],
        ),
      ),
    );
  }
}
