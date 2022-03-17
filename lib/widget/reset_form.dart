import 'package:ecommerce_fresh_app/Constant/My_colors/colors.dart';
import 'package:flutter/material.dart';
class ResetForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: 'Email',
            hintStyle: TextStyle(color:black),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: pink))),
      ),
    );
  }
}