import 'package:ecommerce_fresh_app/Constant/my_Style/My_Style.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Offer extends StatefulWidget {
  const Offer({Key? key}) : super(key: key);

  @override
  _OfferState createState() => _OfferState();
}

class _OfferState extends State<Offer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: sizeFromHeight(context, 3.5),
        width: sizeFromWidth(context, 1),
        child: Carousel(
          images: [
            Image.asset('assets/images/1.jpg'),
            Image.asset('assets/images/2.jpg'),
            Image.asset('assets/images/3.jpg'),
          ],
          showIndicator: false,
          noRadiusForIndicator: false,

          borderRadius: true,
          moveIndicatorFromBottom: 180.0,
          overlayShadow: true,
          overlayShadowSize: 0.7,
        ));
  }
}
