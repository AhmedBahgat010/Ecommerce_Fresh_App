import 'package:ecommerce_fresh_app/Constant/My_colors/colors.dart';
import 'package:ecommerce_fresh_app/Constant/my_Style/My_Style.dart';
import 'package:ecommerce_fresh_app/Screens/cart/appar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/cart.dart';
import '../../model/list.dart';
import 'container_cart_shopping.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Appar_Cart(),
      ),
      body: SingleChildScrollView(
        child: Consumer<Cart>(
          builder: (context, cart, child) {
            return cart.newOrder.isNotEmpty
                ? Column(
                    children: [
                      Container(
                        width: sizeFromWidth(context, 1),
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            physics: const NeverScrollableScrollPhysics(),
                            padding: const EdgeInsets.all(10),
                            itemCount: cart.newOrder.length,
                            itemBuilder: (_, index) {
                              return ContainerNeworder(
                                image: cart.newOrder[index].image,
                                // color: cart.newOrder[index].color,
                                name: cart.newOrder[index].name,
                                subtitle: cart.newOrder[index].descriptionDrink,
                                price: cart.newOrder[index].price,
                                onPressed: () {
                                  cart.remove(cart.newOrder[index]);
                                },
                              );
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 60,
                            width: sizeFromWidth(context, 1.2),
                            child: Center(
                              child: Text(
                                'Total: \$${cart.allPrice}',
                                style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w500,
                                    color: white),
                              ),
                            ),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade400,
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    offset: const Offset(0, 2),
                                  )
                                ],
                                color: pink,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ),
                    ],
                  )
                : SizedBox(height: sizeFromHeight(context, 1.2),
                  child: Center(
                      child: Image.asset('assets/images/empty-cart.png',height: 3000),
                    ),
                );
          },
        ),
      ),
    );
  }
}
