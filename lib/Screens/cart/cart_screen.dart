import 'package:ecommerce_fresh_app/Constant/My_colors/colors.dart';
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
      body: Consumer<Cart>(builder: (context, cart, child) {
     return  cart.newOrder.isNotEmpty  ?

          SingleChildScrollView(
            child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(10),
                itemCount: cart.newOrder.length,
                itemBuilder: (_, index) {

                  return ContainerNeworder(
                      image: cart.newOrder[index].image,
                      color: cart.newOrder[index].color,
                      name: cart.newOrder[index].name,
                      subtitle: cart.newOrder[index].descriptionDrink,
                      price: cart.newOrder[index].price,
                   );
                }),
          )
  :
           Center(
            child: Image.asset('assets/images/empty-cart.png'),
          );

      },

      ),
    );
  }
}
