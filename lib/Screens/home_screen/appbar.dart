import 'package:ecommerce_fresh_app/Screens/cart/cart_screen.dart';
import 'package:ecommerce_fresh_app/model/cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,),
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
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    const Icon(
                      Icons.shopping_cart_outlined,
                      color: black,
                      size: 35,
                    ),
                    Expanded(
                      child: Container(
                          child: Center(child:
                              Consumer<Cart>(builder: (context, Cart, child) {
                            return Text('${Cart.count}',
                                style: TextStyle(color: white));
                          })),
                          height: 17,
                          width: 17,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(100),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
