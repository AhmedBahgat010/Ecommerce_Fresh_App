import 'package:ecommerce_fresh_app/Constant/My_colors/colors.dart';
import 'package:ecommerce_fresh_app/Constant/my_Style/My_Style.dart';
import 'package:ecommerce_fresh_app/Screens/registration/payment_screen.dart';
import 'package:ecommerce_fresh_app/widget/primary_button.dart';
import 'package:ecommerce_fresh_app/widget/reset_form.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';
class ResetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 250,
            ),
            Text(
              'Reset Password',
              style: titleText,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Please enter your email address',
              style: subTitle.copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            ResetForm(),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => paymentScreen(                                                           ),
                      ));
                },
                child: PrimaryButton(buttonText: 'Reset Password')),
          ],
        ),
      ),
    );
  }
}