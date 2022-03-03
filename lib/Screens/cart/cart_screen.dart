import 'package:ecommerce_fresh_app/Constant/My_colors/colors.dart';
import 'package:ecommerce_fresh_app/Screens/cart/appar.dart';
import 'package:ecommerce_fresh_app/Screens/cart/con_cart.dart';
import 'package:flutter/material.dart';


class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: white,
      appBar: PreferredSize( preferredSize: Size.fromHeight(100), child: Appar_Cart(),
      ),
    body: InkWell(
      onTap: () {

      },
      child: Container(
        height: 130,
        margin: const EdgeInsets.all(2),
        color: Colors.blue,
        // width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red,
                  // image: DecorationImage(
                  //     image: AssetImage('assets/images/$image'))
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:const  [
                  Text(
                    'name',
                    style:  TextStyle(
                        fontSize: 22, fontWeight: FontWeight.w500, height: 1.5),
                  ),
                  Text('subtitle',
                      style:  TextStyle(
                          fontSize: 16, height: 1.5, color: gray)),
                  Text('price', style:  TextStyle(fontSize: 18,
                      height: 1.5,
                      color: pink,
                      fontWeight: FontWeight.w500)),
                ],
              ),
            ),
          ],
        ),
      ),
    )
    );
    
    

  }
}
