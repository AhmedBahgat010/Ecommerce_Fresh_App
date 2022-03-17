import 'package:ecommerce_fresh_app/Screens/home_screen/Category.dart';
import 'package:ecommerce_fresh_app/Screens/home_screen/appbar.dart';
import 'package:ecommerce_fresh_app/Screens/home_screen/offer.dart';
import 'package:flutter/material.dart';

import '../../Constant/My_colors/colors.dart';
class FreshHomeScreen extends StatefulWidget {
  const FreshHomeScreen({Key? key}) : super(key: key);

  @override
  _FreshHomeScreenState createState() => _FreshHomeScreenState();
}

class _FreshHomeScreenState extends State<FreshHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100), child: CartAppBar()),
      backgroundColor: white,
      body: SingleChildScrollView(
          child: Column(
        children:  [
          CarouselDemo(),
           SizedBox(height: 20,),
          CategoryScreen(),


        ],
      )),
    );
  }
}
