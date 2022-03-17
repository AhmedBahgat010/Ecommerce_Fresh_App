import 'package:ecommerce_fresh_app/Constant/my_Style/My_Style.dart';
import 'package:flutter/material.dart';

import '../../Constant/My_colors/colors.dart';
class paymentScreen extends StatefulWidget {
  const paymentScreen({Key? key}) : super(key: key);

  @override
  _paymentScreenState createState() => _paymentScreenState();
}

class _paymentScreenState extends State<paymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
        padding: kDefaultPadding,
        child: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        SizedBox(
        height: 120,
    ),
    Text(
    'payment method',
    style: titleText,
    ),
    ],
        ),
    ),
        ),
    );
  }
}
