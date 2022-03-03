import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Constant/My_colors/colors.dart';

Widget Appar_Cart() {
  return SafeArea(
    child: Container(
      height: 40,
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
           Text(
            'Shopping Cart',
            style: TextStyle(
                color: black,
                fontSize: 28,
                fontWeight: FontWeight.w700
            ),
          ),


        ],
      ),
    ),
  );
}
