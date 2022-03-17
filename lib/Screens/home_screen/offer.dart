import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarouselDemo extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) => Column(children: <Widget>[
        CarouselSlider(
            items: [
              Image.asset('assets/images/1.jpg'),
              Image.asset('assets/images/2.jpg'),
              Image.asset('assets/images/3.jpg'),
            ],
            options: CarouselOptions(
              height: 200,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 2),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              // onPageChanged: callbackFunction,
              scrollDirection: Axis.horizontal,
            )),
      ]);
}
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:ecommerce_fresh_app/Constant/my_Style/My_Style.dart';
// import 'package:flutter/material.dart';
//
// class Offer extends StatefulWidget {
//   const Offer({Key? key}) : super(key: key);
//
//   @override
//   _OfferState createState() => _OfferState();
// }
//
// class _OfferState extends State<Offer> {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//         height: sizeFromHeight(context, 3.5),
//         width: sizeFromWidth(context, 1),
//         child:
//
//
//
//     );
//     // Carousel(
//     //       images: [
//     //         Image.asset('assets/images/1.jpg'),
//     //         Image.asset('assets/images/2.jpg'),
//     //         Image.asset('assets/images/3.jpg'),
//     //       ],
//     //       showIndicator: false,
//     //       noRadiusForIndicator: false,
//     //
//     //       borderRadius: true,
//     //       moveIndicatorFromBottom: 180.0,
//     //       overlayShadow: true,
//     //       overlayShadowSize: 0.7,
//     //     ));
//   }
// }
