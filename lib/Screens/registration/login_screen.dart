import 'package:ecommerce_fresh_app/Constant/My_colors/colors.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: white,
      body:Center(child: Text('hi',style: TextStyle(fontSize: 50),)),
    );
  }
}
