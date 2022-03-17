import 'package:ecommerce_fresh_app/Constant/My_colors/colors.dart';
import 'package:flutter/material.dart';
class LogInForm extends StatefulWidget {
  @override
  _LogInFormState createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {


  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildInputForm('Email', false),
        buildInputForm('Password', true),
      ],
    );
  }

  Padding buildInputForm(String label, bool pass) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        obscureText: pass ? _isObscure : false,
        decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(

              color:black,
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: gray),
            ),
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
                color: Colors.grey,
              )
                  : Icon(
                Icons.visibility,
                color: pink,
              ),
            )
                : null),
      ),
    );
  }
}