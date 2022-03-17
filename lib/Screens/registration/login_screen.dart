import 'package:ecommerce_fresh_app/Constant/My_colors/colors.dart';
import 'package:ecommerce_fresh_app/Constant/my_Style/My_Style.dart';
import 'package:ecommerce_fresh_app/Screens/registration/signup_screen.dart';
import 'package:ecommerce_fresh_app/widget/login_form.dart';
import 'package:ecommerce_fresh_app/widget/login_option.dart';
import 'package:ecommerce_fresh_app/widget/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../model/registration.dart';
import 'forget _passward_screen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Padding(
          padding: kDefaultPadding,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 120,
                ),
                Text(
                  'fresh App',
                  style: titleText,
                ),
                SizedBox(
                  height: 5,
                ),

                SizedBox(
                  height: 10,
                ),
                LogInForm(),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResetPasswordScreen()));
                  },
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(
                      color: black,
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                      decorationThickness: 1,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                PrimaryButton(

                  buttonText: 'Log In',
                ),
                SizedBox(
                  height: 20,
                ),

                Text(
                  'Or log in with:',
                  style: subTitle.copyWith(color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                LoginOption(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [

                    Text(
                      'New to this app?',

                      style: subTitle,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign Up',

                        style: textButton.copyWith(
                          decoration: TextDecoration.underline,
                          decorationThickness: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
  }