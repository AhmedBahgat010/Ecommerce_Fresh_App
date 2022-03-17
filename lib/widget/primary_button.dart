import 'package:ecommerce_fresh_app/Constant/My_colors/colors.dart';
import 'package:ecommerce_fresh_app/Constant/my_Style/My_Style.dart';
import 'package:flutter/material.dart';

import '../Screens/home_screen/fresh_home_screen.dart';
class PrimaryButton extends StatelessWidget {
  final String buttonText;
  PrimaryButton({required this.buttonText});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    FreshHomeScreen()));
      },
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.08,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: pink),
        child: Text(
          buttonText,
          style: textButton.copyWith(color: white),
        ),
      ),
    );
  }
}