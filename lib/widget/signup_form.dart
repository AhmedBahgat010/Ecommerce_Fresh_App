import 'package:ecommerce_fresh_app/Constant/My_colors/colors.dart';
import 'package:flutter/material.dart';
class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildInputForm('First Name', false),
        buildInputForm('Last Name', false),
        buildInputForm('Email', false),
        buildInputForm('Phone', false),
        buildInputForm('Password', true),
        buildInputForm('Confirm Password', true),
      ],
    );
  }

  Padding buildInputForm(String hint, bool pass) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: TextFormField(
          obscureText: pass ? _isObscure : false,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: gray),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: pink)),
            suffixIcon: pass
                ? IconButton(
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
                icon: _isObscure
                    ? Icon(
                  Icons.visibility_off,
                  color: gray,
                )
                    : Icon(
                  Icons.visibility,
                  color: pink,
                ))
                : null,
          ),
        ));
  }
}